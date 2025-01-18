/**
* Event Code by [teotm4](https://github.com/teotm). DO NOT USE WITHOUT CREDIT!
*/

function onEvent(name:String, value1:String, value2:String, strumTime:Float)
{
	var flValue1:Null<Float> = Std.parseFloat(value1);
	var flValue2:Null<Float> = Std.parseFloat(value2);
	if(Math.isNaN(flValue1)) flValue1 = null;
	if(Math.isNaN(flValue2)) flValue2 = null;

    switch(name)
	{
		case 'Camera Zoom Tween':
			flValue1 = (flValue1 == null || flValue1 == 0 ? 0.9 : Math.abs(flValue1));
			flValue2 = (flValue2 == null || flValue2 == 0 ? 1 : Math.abs(flValue2));
			FlxTween.tween(FlxG.camera, {zoom: flValue1}, flValue2, {
				ease: FlxEase.linear,
				onComplete: function(twn:FlxTween) {
					game.defaultCamZoom = flValue1;
				}
			});
	}
}