local key = _G.Key
local check = "https://whitelistseenhubv2.000webhostapp.com/MainCheck.php?key=" .. key
if game:HttpGet(check) == "Whitelisted" then
loadstring(game:HttpGet("https://whitelistseenhubv2.000webhostapp.com/MainBounty"))()
else
game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "Key",
  Text = "InvalidKey!"
})
end
