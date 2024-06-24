-- Fetch the settings on script load
for name, data in pairs(mapFixComponents) do
    data.enabled = get(name) == "true"
end

local function handlePlayerResourceStart(res)
    if res ~= resource then return end

    triggerClientEvent(source, "mapfixes:client:loadAllComponents", source, mapFixComponents)
end
addEventHandler("onPlayerResourceStart", root, handlePlayerResourceStart)

local function handleSettingChange(settingName)
    settingName = settingName:gsub(getResourceName(resource)..("."), "")
    local modifier = settingName:sub(1, 1)
    if modifier == "*" or modifier == "#" or modifier == "@" then
        settingName = settingName:sub(2)
    end
    local data = mapFixComponents[settingName]
    if not data then return end
    
    -- Fetch the new setting value
    local newValue = get(settingName)
    data.enabled = newValue == "true"
    
    -- Trigger for all players
    triggerClientEvent("mapfixes:client:togOneComponent", resourceRoot, settingName, data.enabled)
end
addEventHandler("onSettingChange", root, handleSettingChange, false)
