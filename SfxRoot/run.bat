
SET PATH=C:\Ruby193\bin;C:\opscode\chef\bin;C:\Program Files (x86)\Git\cmd;%PATH%

IF NOT EXIST C:\Ruby193\bin\ruby.exe rubyinstaller-1.9.3-p194.exe /silent
::gem update --system

IF NOT EXIST C:\opscode\chef\bin\chef-solo.bat msiexec /qb /i chef-client-latest.msi

::Chef solo fails the first run, so run it twice until we figure this out
call chef-solo -c %CD%\Chef\solo.rb
call chef-solo -c %CD%\Chef\solo.rb

pause