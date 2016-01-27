local GlobalAddonName, UVA = ...

UVA.V = 1
UVA.Rt = "R"

--############### Client Version ###############--

local version, buildVersion, buildDate, uiVersion = GetBuildInfo()
	UVA.clientUIinterface = uiVersion
	local expansion,majorPatch,minorPatch = (version or "1.0.0"):match("^(%d+)%.(%d+)%.(%d+)")
	UVA.clientVersion = (expansion or 0) * 10000 + (majorPatch or 0) * 100 + (minorPatch or 0)
end

--############### Addon Main Window Frame ###############--

local reloadTimer = 0.1
UVA.frame = CreateFrame("Frame")


UVA.frame:RegisterEvent("ADDON_LOADED") 