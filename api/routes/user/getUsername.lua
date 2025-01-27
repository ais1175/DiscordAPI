function API:GetUsername(source)
    if Config.DebugPrints then
        print("(^5discord-api^0) > GetUsername got Triggered!")
    end

    local userId = API:getDiscordID(source)

    local data = API:sendRequestToDiscord("GET", string.format("users/%s", userId))

    return data.username
end
