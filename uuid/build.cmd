@ECHO OFF

SETLOCAL EnableExtensions EnableDelayedExpansion

PUSHD %~dp0

if EXIST vscmake rmdir /S/Q vscmake
mkdir vscmake
CD /D vscmake
cmake -G"Visual Studio 15 2017" -T"LLVM_v141" -Wno-dev -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ -DARCH=amd64 -DBUILD_TYPE=Release -DBUILD_OPTION="" -Dctx_used_by_fibjs="${USED_BY_FIBJS}" -Dname=uuid %~dp0

PUSHD %~dp0

SET VSWHERE=%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\vswhere.exe
@rem Visual Studio 2017
FOR /f "delims=" %%A IN ('"%VSWHERE%" -property installationPath -prerelease -version [15.0^,16.0^)') DO (
	SET VCV_PATH=%%A
	IF EXIST "!VCV_PATH!" (
        ECHO Build Binary With Visual Studio 2017: !VCV_PATH!
        call "!VCV_PATH!\VC\Auxiliary\Build\vcvars64.bat" && call :DO_BUILD
        exit
    )
)

:DO_BUILD
set BUILD_TYPE=Release
set Platform=win32
set MT=/m

msbuild .\vscmake\uuid.sln /t:Build /p:Configuration=!BUILD_TYPE!;Platform=!Platform!;PlatformToolset=v141!XP! !MT!
