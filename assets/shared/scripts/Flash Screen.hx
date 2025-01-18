/**
* Event Code by [teotm4](https://github.com/teotm). DO NOT USE WITHOUT CREDIT!
*/

import backend.CoolUtil;

// HScript stuff
var staticColorScreen:FlxSprite;

function onCreate()
{
	staticColorScreen = new FlxSprite(-FlxG.width, -FlxG.height);
	staticColorScreen.makeGraphic(FlxG.width * 4, FlxG.height * 4);
	staticColorScreen.visible = false;
	staticColorScreen.cameras = [camOther];
	add(staticColorScreen);
}

function onEvent(name:String, value1:String, value2:String, strumTime:Float)
{
	var flValue1:Null<Float> = Std.parseFloat(value1);
	var flValue2:Null<Float> = Std.parseFloat(value2);
	if(Math.isNaN(flValue1)) flValue1 = null;
	if(Math.isNaN(flValue2)) flValue2 = null;

    switch(name)
	{
		case 'Static Color Screen':
			value1 = StringTools.trim(value1.toLowerCase());
			var screenVisible:Bool = (value1 != "hide" && value1 != "off" && value1 != "false" && flValue1 != 0);
			var screenColor:Dynamic = CoolUtil.colorFromString(value2);

			staticColorScreen.visible = screenVisible;
			staticColorScreen.color = screenColor;
		case "Tween Flash Screen's Alpha":
			flValue1 = (flValue1 == null || Math.abs(flValue1) > 1 ? 1 : Math.abs(flValue1));
			flValue2 = (flValue2 == null || flValue2 == 0 ? 1 : Math.abs(flValue2));

			FlxTween.tween(staticColorScreen, {alpha: flValue1}, flValue2, {ease: FlxEase.linear});
	}
}