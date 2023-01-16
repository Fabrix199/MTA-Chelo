function toboolean( bool )
	bool = tostring( bool )
	if bool == "true" then
		return true
	elseif bool == "false" then
		return false
	else
		return nil
	end
end

showCountries = toboolean( get( "showCountries" ) ) or false

if showCountries then
	local isIP2CResourceRunning = getResourceFromName( "ip2c" )
	isIP2CResourceRunning = isIP2CResourceRunning and getResourceState( isIP2CResourceRunning ) == "running"

	local countryData = "Country"
	local defaultCountryIndicator = "N/A"

	for i, player in ipairs( getElementsByType( "player" ) ) do
		local cCode = isIP2CResourceRunning and exports.ip2c:getPlayerCountry( player ) or defaultCountryIndicator
		setElementData( player, countryData, {":ip2c/client/images/flags/" .. cCode:lower() .. ".png", cCode} )
	end

	function setScoreboardData()
		local cCode = isIP2CResourceRunning and exports.ip2c:getPlayerCountry( source ) or defaultCountryIndicator
		setElementData( source, countryData, {":ip2c/client/images/flags/" .. cCode:lower() .. ".png", cCode} )
	end

	function setPlayersScoreboardData()
		local isIP2CResourceRunning_ = getResourceFromName( "ip2c" )
		isIP2CResourceRunning_ = isIP2CResourceRunning_ and getResourceState( isIP2CResourceRunning_ ) == "running"
		for i, player in ipairs( getElementsByType( "player" ) ) do
			local cCode = isIP2CResourceRunning_ and exports.ip2c:getPlayerCountry( player ) or defaultCountryIndicator
			setElementData( player, countryData, {":ip2c/client/images/flags/" .. cCode:lower() .. ".png", cCode} )
		end
	end

	addEventHandler( "onPlayerJoin", root, setScoreboardData )
	addEventHandler("onResourceStart", root, function(resource) if getResourceName(resource)=="ip2c" then setPlayersScoreboardData() end end)
	addEventHandler("onResourceStop", root, function(resource) if getResourceName(resource)=="ip2c" then setPlayersScoreboardData() end end)
end

-- Server staff can use the below command to spoof their country-code in TAB scoreboard to avoid undesired recognition by players.
-- Don't be too obvious, it's advised to pick a country close to your own (to simulate a realistic client > server ping for said country)
addCommandHandler("setcountry",
	function(thePlayer, command, country_code)
		local player_account = getPlayerAccount(thePlayer)
		if not player_account then
			outputChatBox("* You're not logged in.", thePlayer, 255, 100, 100)
			return false
		end
		local account_name = getAccountName(player_account)
		if not isObjectInACLGroup("user."..account_name, aclGetGroup("Admin")) and isObjectInACLGroup("user."..account_name, aclGetGroup("Moderator")) then
			outputChatBox("* You don't have permission to do that.", thePlayer, 255, 100, 100)
			return false
		end
		if not country_code then
			outputChatBox("* Usage: /setcountry countrycode", thePlayer, 255, 100, 100)
			outputChatBox("* Example: /setcountry ru", thePlayer, 255, 100, 100)
			return false
		end
		country_code = string.lower(country_code)
		local img = ":ip2c/client/images/flags/"..country_code..".png"
		if not fileExists(img) then
			outputChatBox("* Sorry, '"..country_code.."' is not an existing country code.", thePlayer, 255, 100, 100)
			return false
		end
		local isIP2CResourceRunning = getResourceFromName( "ip2c" )
		isIP2CResourceRunning = isIP2CResourceRunning and getResourceState( isIP2CResourceRunning ) == "running"
		if not isIP2CResourceRunning then
			-- Warn the user that the country flags are not being fetched
			outputChatBox("* IP2C resource is not running, player country flags are not being fetched!", thePlayer, 255, 255, 100)
		end
		country_code = string.upper(country_code)
		setElementData(thePlayer, "Country", {img, country_code})
		outputChatBox("* Your country has been set to "..country_code.."!", thePlayer, 100, 255, 100)
		return true
	end
)
