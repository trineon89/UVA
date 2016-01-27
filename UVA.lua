local EventFrame = CreateFrame("Startup_Login")

EventFrame:RegisterEvent("PLAYER_LOGIN")
EventFrame:SetScript("OnEvent", function(self,event,...) 
     	ChatFrame1:AddMessage('UVA Loaded ".. UnitName("Player"))
end)