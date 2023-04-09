�  �            �             h;      h;      ����������������        h;             e��Z                   z�2d    �                                     ��2d    ��
                                                                             x   �!�        {�2d��        /"                     �      ��������        x   �!�        {�2d��        /"             �����.�1          �!�        ��2d8�                            '      1       Documentation regarding the contents of this file              '      1       -------------------------------------------------              '      1       * The first component contains this documentation              '      P       * The second one contains what has been watched; this will eventually be used to
       '      .         compile the caption for the coverage report.         '      O       * The third component holds the names of functions and operators to be ignored.        '      Y       * The fourth component holds a matrix with as many rows as test runs have been performed:       	       '      (         [;1] Timestamp ("YYYY-MM-DD hh:mm:ss")       '      G         [;2] The result of the "APLVersion" property + info about the edition        (                 [ ; 3 ]   �#W A   i n   K B 	       '      &       * Components five to nine are reserved         '      W       * The tenth one is originally empty. when "ProcessData" or "ProcessDataAndCreateReport"        '      <         is called the resulting data is written to this component.           '      Q       After the tenth one all components carry a matrix with n rows and 4 columns. n is              '      ;       determined by the number of fns/oprs involved. The columns:     
       '      )       [;1] The name of the function or operator              '      H       [;2] Either empty or a vector of line numbers there were *not* executed.       '      3            Empty in case none or all lines were executed.            '             [;3] Coverage percentage.              '      =       [;4] Total number of lines that can be expected to be tested.   ��������          �!�        ��2d8�                        �rK,               �      @	      �	      �
      �      p      �      p      �      0%                                              �   �!�        ��2d��                            '             #.CodeCoverage.CodeCoverage     ��������        �   �!�        ��2d��                        �?	�       �   �!�        ��2d��                             '              ��������        �   �!�        ��2d��                         �횰       H  �!�        ��2d��        '                           '             2023-04-09 15:46:41 0          (      5       W i n d o w s - 6 4   �"  1 8 . 2 . 4 6 8 5 6 . 0   �"  W   �"  D e v e l o p m e n t   �"  U n i c o d e              '             53  3   ��������        H  �!�        ��2d��        '                3�P       h   �!�        ��2dnC        '              ��������        h   �!�        ��2dnC        '                 ,��       h   �!�        ��2dnC        '              ��������        h   �!�        ��2dnC        '                 .��       h   �!�        ��2dnC        '              ��������        h   �!�        ��2dnC        '                 0��       h   �!�        ��2dnC        '              ��������        h   �!�        ��2dnC        '                 2��       h   �!�        ��2dnC        '              ��������        h   �!�        ��2dnC        '              	   4��	       �                                                   	       '      $       #.CodeCoverage.CodeCoverage.set_datae C        "                     "      d              "              	       '      $       #.CodeCoverage.CodeCoverage.get_datae C        "                     "                     "                    	       '      &       #.CodeCoverage.CodeCoverage.set_ignoreC        "                     "                     "      	       	
       	       '      &       #.CodeCoverage.CodeCoverage.get_ignoreC        "                     "                     "                    	       '      %       #.CodeCoverage.CodeCoverage.set_watch C        "                     "                     "              	       '      %       #.CodeCoverage.CodeCoverage.get_watch C        "                     "                     "                    	       '      (       #.CodeCoverage.CodeCoverage.set_filename       "                     "                     "                 	       '      (       #.CodeCoverage.CodeCoverage.get_filename       "                     "                     "                    	       '      #       #.CodeCoverage.CodeCoverage.Version            "                     "                     "                    	       '      #       #.CodeCoverage.CodeCoverage.History            "                     "      d              "              	       '      !       #.CodeCoverage.CodeCoverage.make1              "                     "                     "      
       
      	       '      !       #.CodeCoverage.CodeCoverage.Close              "                     "                     "                    	       '      '       #.CodeCoverage.CodeCoverage.DeleteFiles        "                     "                     "             	
          '      6       #.CodeCoverage.CodeCoverage.ProcessDataAndCreateReport         "                     "                     "                	       '      (       #.CodeCoverage.CodeCoverage.CreateReport       "                     "                     "      R       	
 !#$&'()*,./012345678:;<=>?@ABCDEFGHIJKMOQRSTUVWZ[\]^_`ab      
       '      )       #.CodeCoverage.CodeCoverage.AddJavaScript              "                     "              
       "      +       	
 !"#$%&'()*+,     
       '      /       #.CodeCoverage.CodeCoverage.AddJavaScriptButton        "                     "                     "             	
 	       '      '       #.CodeCoverage.CodeCoverage.ProcessData        "                     "                     "             	
     	       '      $       #.CodeCoverage.CodeCoverage.Finalisee C        "                     "                     "      \       
!"#$&)*+012369:<=>?@ABCEFGHJKPQRTUVWXYZ[]^_`abcdefghijklmnopqrstuvwxyz{}    	       '      !       #.CodeCoverage.CodeCoverage.Start              "                     "                     "                        '              #.CodeCoverage.CodeCoverage.Stop       "                     "                     "                      '      5       #.CodeCoverage.CodeCoverage.CreateListingForFnsAndOpr          "                     "              	       "      %       	!"#$%&')*+./   	       '      (       #.CodeCoverage.CodeCoverage.GetScreenCss       "                     "                     "      4       	
 !"#$%&'()*+,-./01234    	       '      '       #.CodeCoverage.CodeCoverage.GetPrintCss        "                     "                     "      <       	
 !"#$%&'()*+,-./0123456789:;<           '      8       #.CodeCoverage.CodeCoverage.CollectDataForCoverageReport       "                     "                     "             	

       '      )       #.CodeCoverage.CodeCoverage.NamesInScript              "                     "                     "             	
 !#$%'( 
       '      /       #.CodeCoverage.CodeCoverage.GeterAndSetterNames        "                     "                     "                 
       '      -       #.CodeCoverage.CodeCoverage.RemoveToBeIgnored          "                     "                     "                 
       '      *       #.CodeCoverage.CodeCoverage.FormatDateTime             "                     "                     "                    
       '      .       #.CodeCoverage.CodeCoverage.CollectInformation         "                     "                     "                        '      4       #.CodeCoverage.CodeCoverage.ExchangeHtmlSpecialChars           "                     "                     "                    	       '      %       #.CodeCoverage.CodeCoverage.CompareCR          "                     "                     "             
    	       '      "       #.CodeCoverage.CodeCoverage.IsFile             "                     "                     "                  	       '      $       #.CodeCoverage.CodeCoverage.htmlFilee C        "                     "      d              "              	       '      #       #.CodeCoverage.CodeCoverage.verbose e C        "                     "      d              "              	       '      #       #.CodeCoverage.CodeCoverage.verbose e C        "                     "      d              "              ��������        �  �!�        ��2dp� �       '      $       
   k���
          �!�        ��2d��
 �       '      #              	       '      $       #.CodeCoverage.CodeCoverage.set_datae C        "                     "      d              "              	       '      $       #.CodeCoverage.CodeCoverage.get_datae C        "                     "                     "                    	       '      &       #.CodeCoverage.CodeCoverage.set_ignoreC        "                     "                     "      	       	
       	       '      &       #.CodeCoverage.CodeCoverage.get_ignoreC        "                     "                     "                    	       '      %       #.CodeCoverage.CodeCoverage.set_watch C        "                     "                     "              	       '      %       #.CodeCoverage.CodeCoverage.get_watch C        "                     "                     "                    	       '      (       #.CodeCoverage.CodeCoverage.set_filename       "                     "                     "                 	       '      (       #.CodeCoverage.CodeCoverage.get_filename       "                     "                     "                    	       '      #       #.CodeCoverage.CodeCoverage.Version            "                     "                     "                    	       '      #       #.CodeCoverage.CodeCoverage.History            "                     "      d              "              	       '      !       #.CodeCoverage.CodeCoverage.make1              "                     "                     "      
       
      	       '      !       #.CodeCoverage.CodeCoverage.Close              "                     "                     "                    	       '      '       #.CodeCoverage.CodeCoverage.DeleteFiles        "                     "                     "             	
          '      6       #.CodeCoverage.CodeCoverage.ProcessDataAndCreateReport         "                     "                     "                	       '      (       #.CodeCoverage.CodeCoverage.CreateReport       "                     "                     "      R       	
 !#$&'()*,./012345678:;<=>?@ABCDEFGHIJKMOQRSTUVWZ[\]^_`ab      
       '      )       #.CodeCoverage.CodeCoverage.AddJavaScript              "                     "              
       "      +       	
 !"#$%&'()*+,     
       '      /       #.CodeCoverage.CodeCoverage.AddJavaScriptButton        "                     "                     "             	
 	       '      '       #.CodeCoverage.CodeCoverage.ProcessData        "                     "                     "             	
     	       '      $       #.CodeCoverage.CodeCoverage.Finalisee C        "                     "                     "      \       
!"#$&)*+012369:<=>?@ABCEFGHJKPQRTUVWXYZ[]^_`abcdefghijklmnopqrstuvwxyz{}    	       '      !       #.CodeCoverage.CodeCoverage.Start              "                     "                     "                        '              #.CodeCoverage.CodeCoverage.Stop       "                     "                     "                      '      5       #.CodeCoverage.CodeCoverage.CreateListingForFnsAndOpr          "                     "              	       "      %       	!"#$%&')*+./   	       '      (       #.CodeCoverage.CodeCoverage.GetScreenCss       "                     "                     "      4       	
 !"#$%&'()*+,-./01234    	       '      '       #.CodeCoverage.CodeCoverage.GetPrintCss        "                     "                     "      <       	
 !"#$%&'()*+,-./0123456789:;<           '      8       #.CodeCoverage.CodeCoverage.CollectDataForCoverageReport       "                     "                     "             	

       '      )       #.CodeCoverage.CodeCoverage.NamesInScript              "                     "                     "             	
 !#$%'( 
       '      /       #.CodeCoverage.CodeCoverage.GeterAndSetterNames        "                     "                     "                 
       '      -       #.CodeCoverage.CodeCoverage.RemoveToBeIgnored          "                     "                     "                 
       '      *       #.CodeCoverage.CodeCoverage.FormatDateTime             "                     "                     "                    
       '      .       #.CodeCoverage.CodeCoverage.CollectInformation         "                     "                     "                        '      4       #.CodeCoverage.CodeCoverage.ExchangeHtmlSpecialChars           "                     "                     "                    	       '      %       #.CodeCoverage.CodeCoverage.CompareCR          "                     "                     "             
    	       '      "       #.CodeCoverage.CodeCoverage.IsFile             "                     "                     "                  	       '      $       #.CodeCoverage.CodeCoverage.htmlFilee C        "                     "      d              "              	       '      #       #.CodeCoverage.CodeCoverage.verbose e C        "                     "      d              "              ��������           �!�        ��2d��
 �       '      #       
   K��%       ��������p              p                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      