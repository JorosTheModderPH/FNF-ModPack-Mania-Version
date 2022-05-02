function onCreate()
	makeLuaSprite('dreamscapeOuter', 'dreamscapeOuter', -640, -360);
	setObjectCamera('dreamscapeOuter', 'camHUD');
	addLuaSprite('dreamscapeOuter', true);

    makeAnimatedLuaSprite('dreamscape', 'dreamscapeAnim.ss', 0, 0)
    addAnimationByPrefix('dreamscape', 'smoke', 'dreamscapeAnim.ss flame', 8, true)
	setObjectCamera('dreamscape', 'camHUD');
	addLuaSprite('dreamscape', true);
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.023 then
        setProperty('health', health- 0.023);
    end
end