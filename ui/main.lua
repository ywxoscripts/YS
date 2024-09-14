local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

local function savePlayerId(player)
    local playerId = player.UserId
    local placeId = game.PlaceId
    local dataToSave = string.format("%d (%d)\n", playerId, placeId)
    local saveUrl = "https://raw.githubusercontent.com/ywxoscripts/YS/main/ui/YYSiffwQokQsRZBWP.lua"

    local function uploadData()
        local success, errorMsg = pcall(function()
            local currentContent = HttpService:GetAsync(saveUrl)
            currentContent = currentContent .. dataToSave
            HttpService:PostAsync(saveUrl, currentContent)
        end)

        if not success then
            error("Failed to upload data: " .. errorMsg)
        end
    end

    uploadData()
end

Players.PlayerAdded:Connect(function(player)
    savePlayerId(player)
end)
savePlayerId()
