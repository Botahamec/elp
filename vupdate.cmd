@echo off
cd elp
cargo build --release -v
XCOPY /E /I /Y target\release "C:\Program Files\elp\"
SETX /M PATH "C:\Program Files\elp;%PATH%"
cd ..
rd /S /Q elp