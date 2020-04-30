@echo off

cd\
cd F:\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master


echo Copying Files...
copy F:\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master\SingleMap.map F:\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master


echo Converting map...


echo --------------QBSP--------------
F:\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\qbsp.exe SingleMap

echo --------------VIS---------------
F:\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\vis.exe SingleMap

echo -------------LIGHT--------------
F:\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\light.exe SingleMap

copy SingleMap.bsp F:\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master\id1\Maps
copy SingleMap.pts F:\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master\id1\Maps
copy SingleMap.lit F:\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master\id1\Maps
pause
cd\
cd F:\quake-leveldesign-starterkit-master\quake-leveldesign-starterkit-master
quakespasm  +map SingleMap
