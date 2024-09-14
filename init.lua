local correctDev = "ywxoscripts"
local correctSave = "main"

local env = getfenv()
local dev = env.dev or "unknown"
local save = env.save or "unknown"

print("Dev:", dev)
print("Save:", save)

if dev == correctDev and save == correctSave then
    print('1')
    return true
else
    error("Access Denied: Incorrect dev value. Retard.")
end
