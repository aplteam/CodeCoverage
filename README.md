# The class `CodeCoverage`

## Introduction

This class offers methods to watch certain parts of the workspace for being executed, probably as part of executing
a test framework like [https://github.com/aplteam/Tester2](`Tester2` "Link to Tester2 on GitHub"), although checking
on code coverage by just running an application can make sense as well, in particular with legacy code.

The following gives an example, assuming that there is an application in `#.Foo` we are interested in:

```
      C←⎕NEW #.CodeCoverage (,⊂'#.Foo')
      C.ignore←'#.Foo.TestCases,#.Foo.Samples'
      C.filename←'./Foo-Coverage'
      C.Start ⍬
      #.Foo.Run ⍬
      C.Stop ⍬
      C.Finalyze ⍬
      ⎕←#.CodeCoverage.ProcessDataAndCreateReport  C.filename
./Foo-Coverage.html      
      C.Start ⍬
      #.Foo.Run ⍬
      C.Stop ⍬
      C.Finalyze ⍬
      ⎕←1 #.CodeCoverage.ProcessDataAndCreateReport C.filename      
./Foo-Coverage.html      
```

Notes

* On the second call to `#.CodeCoverage.ProcessDataAndCreateReport` a left argument (1) was provided. This tells the function to add the body (canonical representations) of all functions and operators that carry lines that have not been executed. Those lines are highlighted (bold) and carry a right-pointed array to their left.

* The application was executed twice, therefore the component file carries 12 components. The first 10 are reserved for internal purposes, the collected data is saved in the components 11 and 12, while the aggregated data is saved in component number 10.

A real-life example:

![Example](example.png "Example")

Notes:

* The fact that there are 8 functions not covered at all will be of interest in any case:

  * If this is due to running test cases then it means that those 8 functions are not covered at all.
  
  * If it is the result of running the code intensively then it might be a good idea to check those 8 functions for being obsolete.
  
* Ideally test cases should cover 100% of the code, but that might not be feasible. However, a code coverage of less than 50% seems to be unacceptable for functions that have a considerable number of "executable" lines.

* Note that lines that are empty or carry nothing but a comment line but also elements of control structures like `:Else` and all flavours of `:End` do not count as "executable".


## Details

### Restrictions

* At the time of writing Dyalog provides an `⌶` for retrieving code for functions and operators, including private functions, from scripts, but it does not offer any help for analyzing a script in order to extract the names of all such functions and operators. Therefore `Tester2` does its own analyzing.

  For that to work `Tester2` relies on the code to be formatted properly. For example, in order to tell any `∇` that is used for recursive calls in a dfn from a `∇` that functions as opening or closing tag for a traditional function, the number of leading spaces counts.

* Dfns, named or unnamed, that are locally defined within a dfn (or dop) are not recognized as such but just as part of the outer function.

* Named dfns that are locally defined within a traditional function (or operator) are completely ignored. The lines they occupy in a tfn or top are therefore wrongly reported as not covered. 

  `⎕PROFILE` does not provide the necessary information to get around this.

* This statement:

  ```
  :If a≡1 ⋄ MyFns 1 ⋄ MyOtherFns 2 ⋄ :EndIf
  ```

  is reported as "covered" once the interpreter reaches that line. although clearly only one of the two function calls will be carried out.

  Again this is a `⎕PROFILE` restriction that cannot be overcome.

  There are already a number of good reasons to not use `⋄`, and this is just another one.

### Running several test suites

It is possible to run the test suite more than once (on different platform for example), or to run two test suites that share code (Client and Server part of an application for example) and make `Tester2` collect all the coverage data in a single component file. 

After running the last test suite one can call the shared method `CodeCoverage.AggregateCoverageDataAndCreateReport` and pass the name of the component file holding all the  coverage data. The function will then merge the data, massage it and finally create an HTML file with the final report.

See `Tester2`'s instance properties `saveWatchDetails` and optionally `watchFilename` for this.

### The class `CodeCoverage`

After having executed the test suite one or more times you need the class `CodeCoverage` to prepare a report.

* `AggregateCoverageData` aggregates and massages the data
* `CreateCoverageReport` for creating a report bases on the prepared data
* `AggregateCoverageDataAndCreateReport` carries both steps out in one go

#### The `verbose` option

`verbose`, the optional left argument of both `CreateCoverageReport` and `AggregateCoverageDataAndCreateReport`, defaults to 0. This means that the body of any function or operator that is only partly covered is not listed in the report, only the fully qualified names and informaton regarding which lines did not get executed, the coverage percentage and the total number of lines.

This makes sense when you generate the first coverage report because more often then not quite a number of functions are not covered by the tests yet, and you will most likely add more tests in order to cover some of them. 

Others are not that important or so trial that there is no point in covering them, so you might want them ignore; see the next topic for that.

After taking such action you are advised to run the tests again with the coverage option active, but this time you generate the report with `verbose←` because it now makes sense to look into the  detais.

#### The `ignore` property

This is a text vector that is by default empty. You may add fully qualified names of comma-separated functions and operators you want to be ignored wen reporting on code coverage.

Note that `ignore` is a shared property.