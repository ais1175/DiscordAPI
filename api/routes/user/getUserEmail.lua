function API:GetUserEmail(source)
    if Config.DebugPrints then
        print("(^5discord-api^0) > GetUserEmail got Triggered!")
    end

    local userId = API:getDiscordID(source)

    local data = API:sendRequestToDiscord("GET", string.format("users/%s", userId))

    return data.email
end
