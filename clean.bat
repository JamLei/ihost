@ echo off
%1 %2
ver|find "5.">nul&&goto :Admin
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :Admin","","runas",1)(window.close)&goto :eof
:Admin
copy C:\Users\Public\ihosts\cleanHosts C:\Windows\System32\drivers\etc\hosts
taskkill /f /im cmd.exe
