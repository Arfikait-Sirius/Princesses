@ECHO OFF

cd ./%1

gnatmake -P%1 -O %1

cd ..

echo Completed!
