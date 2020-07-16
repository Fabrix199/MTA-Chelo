--
--	beginRound: begins the round
--
function beginRound()
	-- reset player score data
	for _, player in ipairs(getElementsByType("player")) do
		setElementData(player, "Score", 0)
		setElementData(player, "Rank", "-")
	end
	-- start round timer
	if _timeLimit > 0 then
		_missionTimer = exports.missiontimer:createMissionTimer(_timeLimit, true, true, 0.5, 20, true, "default-bold", 1)
		addEventHandler("onMissionTimerElapsed", _missionTimer, onTimeElapsed)
	end
	-- attach player wasted handler
	addEventHandler("onPlayerWasted", root, processPlayerWasted)
	-- update game state
	setElementData(resourceRoot, "gameState", GAME_IN_PROGRESS)
	-- spawn players
	for _, player in ipairs(getElementsByType("player")) do
		if _playerStates[player] == PLAYER_READY then
            spawnDeathmatchPlayer(player)
            triggerClientEvent(player, "onClientDeathmatchRoundStart", resourceRoot)
		end
	end
end

--
--	onTimeElapsed: triggered when the missiontimer has elapsed
--
function onTimeElapsed()
	local players = getElementsByType("player")
	-- sort players by score
	table.sort(players, scoreSortingFunction)
	-- if the two top players have the same score, end the round in a draw
	-- otherwise, the player with the highest score wins
	if players[2] and getElementData(players[1], "Score") == getElementData(players[2], "Score") then
		endRound(false, true)
	else
		endRound(players[1])
	end
end

--
--	endRound: ends the round
--
function endRound(winner, draw, aborted)
	-- remove player wasted handler
	removeEventHandler("onPlayerWasted", root, processPlayerWasted)
	-- kill player respawn timers
	for player, timer in pairs(_respawnTimers) do
		killTimer(timer)
	end
	_respawnTimers = {}
	-- kill mission timer
	if isElement(_missionTimer) then
		destroyElement(_missionTimer)
	end
	-- update game state
	setElementData(resourceRoot, "gameState", GAME_FINISHED)
	-- make all other players focus on the winner and begin to fade out camera
    for _, player in ipairs(getElementsByType("player")) do
		if _playerStates[player] ~= PLAYER_JOINED then
            -- update player state
            _playerStates[player] = PLAYER_READY
			-- inform client round is over
			triggerClientEvent(player, "onClientDeathmatchRoundEnd", resourceRoot, winner, draw, aborted)
        end
	end
	-- don't cycle the map if the round was aborted (map resource was stopped)
	if aborted then
		return
	end
	-- if mapcycler is running, signal that this round is over by triggering onRoundFinished
	-- otherwise, schedule the next round
	local mapcycler = getResourceFromName("mapcycler")
	if mapcycler and getResourceState(mapcycler) == "running" then
		triggerEvent("onRoundFinished", resourceRoot)
	else
		setTimer(beginRound, CAMERA_LOAD_DELAY * 2, 1)
	end
end
