setlocal

call "%VS140COMNTOOLS%\VsDevCmd.bat"

copy "%ProgramFiles%\Unity\Editor\Data\Managed\UnityEngine.dll" Library\UnityAssemblies
devenv UnityVS.UniRx.sln /Rebuild Unity

copy "%ProgramFiles%\Unity\Editor\Data\PlaybackEngines\webglsupport\Managed\UnityEngine.dll" Library\UnityAssemblies
devenv UnityVS.UniRx.sln /Rebuild UnityWebGL

copy "%ProgramFiles%\Unity\Editor\Data\PlaybackEngines\androidplayer\Variations\mono\Managed\UnityEngine.dll" Library\UnityAssemblies
devenv UnityVS.UniRx.sln /Rebuild UnityAndroid

copy "%ProgramFiles%\Unity\Editor\Data\PlaybackEngines\iossupport\Managed\UnityEngine.dll" Library\UnityAssemblies
devenv UnityVS.UniRx.sln /Rebuild UnityIos


cd Library
del Plugins /Q/S
mkdir Plugins
cd Plugins


del Android /Q/S
mkdir Android
copy ..\..\Dlls\UniRx.Library.Unity\bin\UnityAndroid\UniRx*.* Android

del iOS /Q/S
mkdir iOS
copy ..\..\Dlls\UniRx.Library.Unity\bin\UnityIos\UniRx*.* iOS

del WebGL /Q/S
mkdir WebGL
copy ..\..\Dlls\UniRx.Library.Unity\bin\UnityWebGL\UniRx*.* WebGL

del Standalone /Q/S
mkdir Standalone
copy ..\..\Dlls\UniRx.Library.Unity\bin\Unity\UniRx*.* Standalone


cd ..\..


endlocal
