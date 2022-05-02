function onCreate()
	makeLuaSprite('dreamscapeOuter', 'dreamscapeOuter', -640, -360);
	setObjectCamera('dreamscapeOuter', 'camHUD');
	setProperty('dreamscapeOuter.visible', false)
	addLuaSprite('dreamscapeOuter', true);

    makeAnimatedLuaSprite('dreamscape', 'dreamscapeAnim.ss', 0, 0);
    addAnimationByPrefix('dreamscape', 'smoke', 'dreamscapeAnim.ss flame', 8, true);
	setObjectCamera('dreamscape', 'camHUD');
	setProperty('dreamscape.visible', false)
	addLuaSprite('dreamscape', true);

	doTweenColor('dreamscapeColorTween', 'dreamscape', '0xFFFF9A9A', 0.01, 'linear');
	doTweenColor('dreamscapeOuterColorTween', 'dreamscapeOuter', '0xFFFF9A9A', 0.01, 'linear');
	
	setProperty('gf.alpha', '0');
end

function onBeatHit()
	if curBeat == 1 then
		doTweenAlpha('dreamscapeOuterTween', 'dreamscapeOuter', 0, 0.01, 'linear')
		doTweenAlpha('dreamscapeTween', 'dreamscape', 0, 0.01, 'linear')
	end
	
	if curBeat == 15 then
		setProperty('dreamscapeOuter.visible', true)
		setProperty('dreamscape.visible', true)
	end

	if curBeat == 64 then
		doTweenAlpha('dreamscapeOuterTween', 'dreamscapeOuter', 1, 0.8, 'linear')
		doTweenAlpha('dreamscapeTween', 'dreamscape', 1, 0.8, 'linear')
	end

	if curBeat == 264 then
		triggerEvent('Play Animation', 'bigYell', 'bf')
		triggerEvent('Camera Follow Pos', '1290', '650')
        doTweenZoom('bruh', 'camGame', 1.3, 0.3, 'quintOut')
        setProperty('defaultCamZoom', 1.3)
		doTweenAlpha('hudAlpha', 'camHUD', 0, 0.3, 'linear');
	end

	if curBeat == 268 then
		setProperty('health', 2)
	end

	if curBeat == 271 then
		triggerEvent('Play Animation', 'idle', 'bf')
		triggerEvent('Camera Follow Pos', '', '')
        doTweenZoom('bruh', 'camGame', 0.8, 0.3, 'quintOut')
        setProperty('defaultCamZoom', 0.8)
		doTweenAlpha('hudAlpha', 'camHUD', 1, 0.3, 'linear');
	end

	if curBeat == 344 then
		triggerEvent('Change Character', '0', 'bf-christmas3smile')
		doTweenAlpha('dreamscapeOuterTween', 'dreamscapeOuter', 0, 15, 'linear')
		doTweenAlpha('dreamscapeTween', 'dreamscape', 0, 15, 'linear')
		doTweenAlpha('DadAlpha', 'dad', 0, 23, 'linear');
		doTweenAlpha('iconP2Alpha', 'iconP2', 0, 23, 'linear');
	end
end