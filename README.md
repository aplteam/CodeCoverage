# The class `CodeCoverage`

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
      #.CodeCoverage.ProcessDataAndCreateReport  C.filename
./Foo-Coverage.html      
      C.Start ⍬
      #.Foo.Run ⍬
      C.Stop ⍬
      C.Finalyze ⍬
      1 #.CodeCoverage.ProcessDataAndCreateReport C.filename      
./Foo-Coverage.html      
```

Notes

* On the second call to `#.CodeCoverage.ProcessDataAndCreateReport` a left argument (1) was provided. This tells the function to add the body (canonical representations) of all functions and operators that carry lines that have not been executed. Those lines are highlighted (bold) and carry a right-pointed array to their left.

* The application was executed twice, therefore the component file carries 12 components. The first 10 are reserved for internal purposes, the collected data is saved in the components 11 and 12, while the aggregated data is saved in component number 10.

