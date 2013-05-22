package
{
    import org.flixel.*;

    public class EndgameState extends FlxState
    {
        override public function create():void
        {
            var t:FlxText;
            t = new FlxText(0,FlxG.height/2-10,FlxG.width,"you lose");
            t.size = 16;
            t.alignment = "center";
            add(t);
            t = new FlxText(FlxG.width/2-50,FlxG.height-20,100,"UP to retry");
            t.alignment = "center";
            add(t);

            FlxG.mouse.show();
        }

        override public function update():void
        {
            super.update();

            if(FlxG.keys.UP)
            {
                FlxG.mouse.hide();
                FlxG.switchState(new PlayState());
            }
        }
    }
}