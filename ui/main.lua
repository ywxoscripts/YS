local function savePlayerId()
    local player = game.Players.LocalPlayer
    if not player then
        error("LocalPlayer is nil, cannot access Player ID")
    end

    local playerId = player.UserId
    local placeId = game.PlaceId
    local dataToSave = string.format("%d (%d)\n", playerId, placeId)
    local saveUrl = "https://raw.githubusercontent.com/ywxoscripts/YS/main/ui/YYSiffwQokQsRZBWP.lua"

    local function uploadData()
        local httpService = game:GetService("HttpService")
        local success, errorMsg = pcall(function()
            local currentContent = httpService:GetAsync(saveUrl)
            currentContent = currentContent .. dataToSave
            httpService:PostAsync(saveUrl, currentContent)
        end)

        if not success then
            error("Failed to upload data: " .. errorMsg)
        end
    end

    uploadData()
end

game.Players.PlayerAdded:Wait()
savePlayerId()
