local correctDev = "ywxoscripts"
local correctSave = "main"

local dev = getfenv().dev or "unknown"
local save = getfenv().save or "unknown"

print("Dev:", dev)
print("Save:", save)

if dev == correctDev and save == correctSave then
    return true
else
    error("Access Denied: Incorrect dev value. Retard.")
end
