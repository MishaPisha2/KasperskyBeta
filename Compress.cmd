rmdir /s /q temp
rmdir /s /q libraries
del RiseCompressed.zip
del RiseCompressed.jar
mkdir temp
cd temp
jar -xf ..\Rise.jar
del /s /q License
jar -xf ..\Libraries.jar
del /s /q License
rmdir /s /q META-INF
powershell copy -r ..\replace\META-INF\ ..\temp\
jar -cf RiseCompressed.jar *
move "RiseCompressed.jar" ..\
rmdir /q /s temp