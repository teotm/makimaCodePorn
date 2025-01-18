function onCreate()
{
	var backgroundPorn:FlxSprite = new FlxSprite(-FlxG.width * 2, -FlxG.height * 2);
	backgroundPorn.makeGraphic(FlxG.width * 4, FlxG.height * 4, 0xFF000000);
	backgroundPorn.scrollFactor.set(0, 0);
	addBehindGF(backgroundPorn);
}

function onCreatePost()
{
	if (game.boyfriend != null)
		game.boyfriend.visible = false;
	if (game.gf != null)
		game.gf.visible = false;
}