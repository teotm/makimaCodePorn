@echo off
color 0a
cd ..
@echo on
echo Installing dependencies.
haxelib --never newrepo
haxelib install lime 8.1.2
haxelib install openfl 9.3.3
haxelib install flixel 5.5.0
haxelib install flixel-addons 3.2.1
haxelib install flixel-ui 2.5.0
haxelib install flixel-tools 1.5.1
haxelib install SScript 8.1.6
haxelib install hxvlc 1.3.0
haxelib install tjson 1.4.0
haxelib git flxanimate https://github.com/szpilka-mod-studios/flxanimate 9cd48bfde59c97b4d163a51b0e450d872c943f3e
haxelib git linc_luajit https://github.com/superpowers04/linc_luajit 633fcc051399afed6781dd60cbf30ed8c3fe2c5a
haxelib git hxdiscord_rpc https://github.com/MAJigsaw77/hxdiscord_rpc ab81ae0928f05c09ea181d873bde2b30df6e185e
echo Finished!
pause