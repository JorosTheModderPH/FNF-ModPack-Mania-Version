function onCreate()
	makeLuaSprite('dreamscapeOuter', 'dreamscapeOuter', -640, -360);
	setObjectCamera('dreamscapeOuter', 'camHUD');
	addLuaSprite('dreamscapeOuter', true);

    makeAnimatedLuaSprite('dreamscape', 'dreamscapeAnim.ss', 0, 0)
    addAnimationByPrefix('dreamscape', 'smoke', 'dreamscapeAnim.ss flame', 8, true)
	setObjectCamera('dreamscape', 'camHUD');
	addLuaSprite('dreamscape', true);

	doTweenColor('dreamscapeColorTween', 'dreamscape', '0xFFFF9A9A', 0.01, 'linear');
	doTweenColor('dreamscapeOuterColorTween', 'dreamscapeOuter', '0xFFFF9A9A', 0.01, 'linear');

	doTweenZoom('bruh', 'camGame', 0.88, 0.01, 'linear')
	setProperty('defaultCamZoom', 0.88)
	
	setProperty('gf.alpha', '0');
end