package options;

#if desktop
import Discord.DiscordClient;
#end
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;
import flixel.FlxSubState;
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxSave;
import haxe.Json;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;

using StringTools;

class MoreGameplaySettingsSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'More Gameplay Settings';
		rpcTitle = 'More Gameplay Settings Menu'; //for Discord Rich Presence

		var option:Option = new Option('Lane Underlay',
			"If unchecked, then no underlane, but it is not recommended.",
			'laneUnderlay',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Drain Health',
			"If checked, Every time an opponent hits, your health will start to reduce.",
			'healthDrain',
			'bool',
			false);
		addOption(option);

		var option:Option = new Option('Darken Screen',
			"If checked, Darken your screen outside in the background.",
			'darkenScreen',
			'bool',
			true);
		addOption(option);

		super();
	}
}