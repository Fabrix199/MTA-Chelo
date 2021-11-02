function onResourceStartPlay()
	resetMapInfo()
	createVehicles()

	local playersTable = getElementsByType("player")

	for playerID = 1, #playersTable do
		local playerElement = playersTable[playerID]

		playSpawnPlayer(playerElement)
	end

	addEventHandler("onPlayerJoin", root, onPlayerJoinOrWasted)
	addEventHandler("onPlayerWasted", root, onPlayerJoinOrWasted)
	addEventHandler("onPlayerQuit", root, onPlayerQuit)
	addEventHandler("onVehicleEnter", resourceRoot, onVehicleEnter)
	addEventHandler("onVehicleExit", resourceRoot, onVehicleExit)
	addEventHandler("onElementDestroy", resourceRoot, onVehicleElementDestroy)
end
addEventHandler("onResourceStart", resourceRoot, onResourceStartPlay)