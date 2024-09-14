local correctDev = "ywxoscripts"
local correctSave = "main"

local dev = _G.dev or "unknown"
local save = _G.save or "unknown"

if dev == correctDev and save == correctSave then
    print('1')
    return true
else
    error("Access Denied: Incorrect dev value. Retard.")
end
