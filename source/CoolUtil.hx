package;

import lime.utils.Assets;
import flixel.graphics.frames.FlxAtlasFrames; //i hate dame dane!!!!

using StringTools;

class CoolUtil
{
	public static var difficultyArray:Array<String> = ['EASY', "NORMAL", "HARD"];

	public static function difficultyString():String
	{
		return difficultyArray[PlayState.storyDifficulty];
	}

	public static function coolTextFile(path:String):Array<String>
	{
		var daList:Array<String> = Assets.getText(path).trim().split('\n');

		for (i in 0...daList.length)
		{
			daList[i] = daList[i].trim();
		}

		return daList;
	}

        public static function joinFrames(spriteArray:Array<String>, ?library:String):FlxAtlasFrames {
		var framesArray:Array<FlxAtlasFrames> = [];
		var returnFrames = Paths.getSparrowAtlas(spriteArray[0], library);
		spriteArray.remove(spriteArray[0]);
		for (sprite in spriteArray)
			framesArray.push(Paths.getSparrowAtlas(sprite, library));

		for (sprite in framesArray) {
			for (frame in sprite.frames)
				returnFrames.pushFrame(frame);
		}

		return returnFrames;
	}
	
	public static function coolStringFile(path:String):Array<String>
		{
			var daList:Array<String> = path.trim().split('\n');
	
			for (i in 0...daList.length)
			{
				daList[i] = daList[i].trim();
			}
	
			return daList;
		}

	public static function numberArray(max:Int, ?min = 0):Array<Int>
	{
		var dumbArray:Array<Int> = [];
		for (i in min...max)
		{
			dumbArray.push(i);
		}
		return dumbArray;
	}

        public static function joinFrames(spriteArray:Array<String>, ?library:String):FlxAtlasFrames {
		var framesArray:Array<FlxAtlasFrames> = [];
		var returnFrames = Paths.getSparrowAtlas(spriteArray[0], library);
		spriteArray.remove(spriteArray[0]);
		for (sprite in spriteArray)
			framesArray.push(Paths.getSparrowAtlas(sprite, library));

		for (sprite in framesArray) {
			for (frame in sprite.frames)
				returnFrames.pushFrame(frame);
		}

		return returnFrames;
	}
}
