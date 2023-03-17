cd C:\GH\oomlout_oobb_v3
forfiles /P C:\GH\oomlout_oobb_v3\ /M *.* /S /C "CMD /C if @fsize gtr 10000000 echo @PATH @FSIZE"
forfiles /P C:\GH\oomlout_oobb_v3\ /M *.* /S /C "CMD /C if @fsize gtr 10000000 echo @PATH @FSIZE" > bigfiles.txt
pause