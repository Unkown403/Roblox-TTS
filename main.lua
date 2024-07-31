local function TTS(name,content)
local request_params = {
    Url = "https://unkown404.pythonanywhere.com/text_to_speech",
    Method = "POST",  
    Headers = {
        ["Content-Type"] = "application/json" 
    },
    Body = '{"text": '..content..', "language": "en"}'  
}
local response = request(request_params)
print(response)
writefile(name..".mp3", response.Body)
end

local function PlayAudio(filename)
    local ad = Instance.new("Sound",game.Players.LocalPlayer.PlayerGui)
    ad.SoundId = getcustomasset(filename..".mp3")
    ad:Play()
    return ad
end
