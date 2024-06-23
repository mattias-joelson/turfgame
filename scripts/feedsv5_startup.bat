@echo off

SETLOCAL

set scripts_dir="c:\Users\eljol\src\turfgame\scripts\"
set jar_dir="c:\Users\eljol\.m2\repository\org\joelson\turf\resources\1.0.0"
set jar_file="resources-1.0.0-jar-with-dependencies.jar"
set feed_drive=c:
set feed_dir="c:\Users\eljol\src\turfgame_feedsv5"

echo scripts:   %scripts_dir%
echo jar dir:   %jar_dir%
echo jar file:  %jar_file%
echo drive:     %feed_drive%
echo feed dir:  %feed_dir%

@echo on
:loop
%feed_drive%
cd %feed_dir%
%scripts_dir%feedsv5.bat %jar_dir%\%jar_file%
goto loop

ENDLOCAL
