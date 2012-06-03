IF NOT EXIST C:\Ruby193\bin\ruby.exe rubyinstaller-1.9.3-p194.exe /silent
::gem update --system
IF NOT EXIST C:\opscode\chef\bin\chef-solo.bat msiexec /qb /i chef-client-latest.msi