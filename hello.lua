local HttpService = game:GetService("HttpService")

local url = "https://pastebin.com/raw/C5AkfrB3"

local success, response = pcall(HttpService.GetAsync, HttpService, url)

if success then
    local scriptCode = response
    local loadstringFunction = loadstring or load

    local success, error = pcall(loadstringFunction, scriptCode)

    if not success then
        warn("Erro ao carregar o código do script: " .. tostring(error))
    end
else
    warn("Erro ao fazer a solicitação HTTP: " .. tostring(response))
end
