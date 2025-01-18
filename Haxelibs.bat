@echo off

title Haxe libraries installer
echo This file will install all required Haxe libraries in order to compile this mod
echo --
pause
goto Choose

:Choose
	cls
	echo *MAKE SURE YOU'VE DOWNLOADED HAXE 4.2.5 AND GIT ON YOUR PC, OTHERWISE IT WON'T WORK*
	echo.
	echo.
	echo.
	echo Which way you would like to install the libraries?
	echo 1. Install the libs at my Haxe default path (ex: C Drive) (recommended)
	echo    NOTE: If you have chosen 2. before or just have ".haxelib" folder in the directory the batchfile is
	echo    opened in, the libraries will be installed in ".haxelib" folder instead.
	echo    If you wish to use option 1 properly, delete the ".haxelib" in the directory the batchfile
	echo    is currently in.
	echo.
	echo 2. Install the libs just for this repo locally (creates ".haxelib/" folder in directory the file is opened up).
	echo    NOTE: Once you start compiling, the project will use libraries located in ".haxelib/" folder
	echo.
	echo 3. By reading data stored in "hmm.json" (works similarly to option 2.)
	echo.
	echo 4. I just want to compile the game (Libraries are required).
	echo.
	choice /c 1234
		if %errorlevel% equ 1 goto InstallHaxeLibs
		if %errorlevel% equ 2 goto CreateDotHaxelibFolder
		if %errorlevel% equ 3 goto hmm
		if %errorlevel% equ 4 goto Compile

:CreateDotHaxelibFolder
	cls
	title Haxe libraries installer - Creating ".haxelib" folder
	haxelib --never newrepo
	pause
	goto InstallHaxeLibs

:InstallHaxeLibs
	cls
	title Haxe libraries installer - Downloading required libraries

	haxelib install lime 8.1.2
	haxelib set lime 8.1.2
	haxelib install openfl 9.3.3
	haxelib set openfl 9.3.3
	haxelib install flixel 5.5.0
	haxelib set flixel 5.5.0
	haxelib install flixel-addons 3.2.1
	haxelib set flixel-addons 3.2.1
	haxelib install flixel-ui 2.5.0
	haxelib set flixel-ui 2.5.0
	haxelib install flixel-tools 1.5.1
	haxelib set flixel-tools 1.5.1
	haxelib install SScript 8.1.6
	haxelib set SScript 8.1.6
	haxelib install hxvlc 1.3.0
	haxelib set hxvlc 1.3.0
	haxelib install tjson 1.4.0
	haxelib set tjson 1.4.0
	haxelib git SScript https://github.com/szpilka-mod-studios/SScript 7f184495366aa51d7bfc22379fd22ebf9447674b
	haxelib set SScript git
	haxelib git flxanimate https://github.com/szpilka-mod-studios/flxanimate 9cd48bfde59c97b4d163a51b0e450d872c943f3e
	haxelib set flxanimate git
	haxelib git linc_luajit https://github.com/superpowers04/linc_luajit 633fcc051399afed6781dd60cbf30ed8c3fe2c5a
	haxelib set linc_luajit git
	haxelib git hxdiscord_rpc https://github.com/MAJigsaw77/hxdiscord_rpc ab81ae0928f05c09ea181d873bde2b30df6e185e
	haxelib set hxdiscord_rpc git
	haxelib git tentools https://github.com/TentaRJ/tentools 6a8077182dfb949ed64e11075cda641687231379
	haxelib set tentools git
	haxelib git systools https://github.com/haya3218/retools 2055163b700afeaf8f566c32442148cdbc429e44
	haxelib set systools git
	haxelib run lime rebuild systools windows
	haxelib list
	pause
	goto Close

:hmm
	cls
	title Haxe libraries installer - HMM
	echo Installing the libraries by hmm.json...
	haxelib install hmm
	haxelib run hmm install
	haxelib run lime rebuild systools windows
	echo The libraries have been installed and the list can be seen above
	pause
	goto Close

:Compile
	cls
	title Compiling the game.....
	echo Compiling the game (for Windows x64)
	echo.
	haxelib run lime test windows
	echo Done!
	pause
	goto Close

:Close