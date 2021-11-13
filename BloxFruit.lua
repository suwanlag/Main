













function script()
    game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "NotHuman",
  Text = "CheckingHwid"
})
wait(3)
game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "NotHuman",
  Text = "Completed!!"
})
print("Script55")
end





















--[[ WEHITELIST ]]--
--[[ WEHITELIST ]]--
--[[ WEHITELIST ]]--
--[[ WEHITELIST ]]--


if _G.Key == nil then
   game.Players.LocalPlayer:kick("Please don't delete _G.Key")
   wait(.8)
   while true do end
end

local http_request = http_request
if syn then
    http_request = syn.request
elseif SENTINEL_V2 then
    function http_request(tb)
        return {
            StatusCode = 200,
            Body = request(tb.Url, tb.Method, (tb.Body or ""))
        }
    end
end
local body = http_request({Url = "https://httpbin.org/get", Method = "GET"}).Body
local decoded = game:GetService("HttpService"):JSONDecode(body)
local hwid_list = {
    "Syn-Fingerprint",
    "Exploit-Guid",
    "Proto-User-Identifier",
    "Sentinel-Fingerprint",
    "Krnl-Fingerprint"
}
local hwid = ""
for i, v in next, hwid_list do
    if decoded.headers[v] then
        HWID = decoded.headers[v]
        break
    end
end
local b = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
function dec(data)
    data = string.gsub(data, "[^" .. b .. "=]", "")
    return (data:gsub(
        ".",
        function(x)
            if (x == "=") then
                return ""
            end
            local r, f = "", (b:find(x) - 1)
            for i = 6, 1, -1 do
                r = r .. (f % 2 ^ i - f % 2 ^ (i - 1) > 0 and "1" or "0")
            end
            return r
        end
    ):gsub(
        "%d%d%d?%d?%d?%d?%d?%d?",
        function(x)
            if (#x ~= 8) then
                return ""
            end
            local c = 0
            for i = 1, 8 do
                c = c + (x:sub(i, i) == "1" and 2 ^ (8 - i) or 0)
            end
            return string.char(c)
        end
    ))
end
function bombbbbbb()
    game.Players.LocalPlayer:kick("Detected function tampering! -1")
    wait(0.8)
    while true do
    end
end
local server =
    http_request(
    {
        Url = "http://27.254.163.51/server.php?key=" .. _G.Key .. "&HWID=" .. HWID,
        Method = "GET"
    }
).Body
decode = dec(server)
function flyy(a)
    game.Players.LocalPlayer:kick(a)
    wait(.8)
    while true do
    end
end
if decode == "" then
    flyy("Invaild Key")
elseif decode == "Invalid Key" then
    flyy("Invaild Key")
elseif decode == "Update Hwid" then
    flyy("Update Hwid Wait 2-3 Sec.")
    wait(math.random(2, 3))
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
elseif decode == "Invalid HWID" then
    flyy("Invalid HWID")
elseif decode == "You Are Got Blacklist" then
    flyy("You Are Got Blacklist")
elseif decode == "Whitelist" then
    local forcracker =
        http_request(
        {
            Url = "http://27.254.163.51/hi-cracker.php",
            Method = "GET"
        }
    ).Body
    g = dec(forcracker)
    if
        tonumber(g) == os.time() or tonumber(g) == os.time() + 1 or tonumber(g) == os.time() + 2 or tonumber(g) == os.time() + 3 or tonumber(g) == os.time() + 4 or tonumber(g) == os.time() + 5 or tonumber(g) == os.time() + 6
     then
        script()
    else
        flyy("PLEASE RESET YOUR SYNC TIME!!")
    end
end
