local useTeams = get("use_team_colors") == "true" and true or false
local blipSize = get("blip_size")
local blipAlpha = get("blip_alpha")
local color = get("blip_color")
local colors = {}
local blips = {}

local function resourceStart()
	for i, player in ipairs(Element.getAllByType("player")) do
		createPlayerBlip(player)
	end

	if not useTeams then
		addCommandHandler("setblipcolor", setBlipColor)
	end
end
addEventHandler("onResourceStart", resourceRoot, resourceStart)

function createPlayerBlip(player)
	if (not player or not isElement(player) or player.type ~= "player") then return false end
	local r, g, b
	if (useTeams and player.team) then
		r, g, b = player.team:getColor()
	elseif (colors[player]) then
		r, g, b = colors[player][1], colors[player][2], colors[player][3]
	else
		r, g, b = color[1], color[2], color[3]
	end
	if (blips[player]) then
		blips[player]:setColor(r, g, b, blipAlpha)
	else
		blips[player] = Blip.createAttachedTo(player, 0, blipSize, r, g, b, blipAlpha)
	end
end

function setBlipColor(player, _, r, g, b)
	r, g, b = tonumber(r), tonumber(g), tonumber(b)
	if (r and g and b) then
		if (r >= 0 and r <= 255 and g >= 0 and g <= 255 and b >= 0 and b <= 255) then
			colors[player] = {r, g, b}
			createPlayerBlip(player)
		else
			outputChatBox("Couldn't change blip color - numbers must be between 0 and 255", player, 255, 0, 0)
		end
	else
		outputChatBox("Couldn't change blip color - invalid arguments specified", player, 255, 0, 0)
	end
end

function destroyPlayerBlip(player)
	player = player or source
	blips[player]:destroy()
	blips[player] = nil
	colors[player] = nil
end

addEventHandler("onPlayerQuit", root, createPlayerBlip)
addEventHandler("onPlayerWasted", root, createPlayerBlip)
addEventHandler("onPlayerSpawn", root, createPlayerBlip)
