@echo off

del UnityAssemblies /Q/S
mkdir UnityAssemblies

copy "%ProgramFiles%\Unity\Editor\Data\Managed\UnityEditor.dll" UnityAssemblies
copy "%ProgramFiles%\Unity\Editor\Data\Managed\UnityEditor.Graphs.dll" UnityAssemblies
copy "%ProgramFiles%\Unity\Editor\Data\Managed\UnityEngine.dll" UnityAssemblies
copy "%ProgramFiles%\Unity\Editor\Data\UnityExtensions\Unity\GUISystem\UnityEngine.UI.dll" UnityAssemblies
