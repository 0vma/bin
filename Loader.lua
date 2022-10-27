if print == loadstring then game:shutdown(); -- common anti dump check (doubt anyone would actually use this LOL)
local methods = {print, warn, error, rconsoleprint, rconsolewarn, rconsoleerr, rconsoleinfo, setclipboard}
local cases = {"loadstring", "github", "www", "https://", "HTTP", "Logged"}
for i = 1, #methods do
    if typeof(methods[i]) == 'function' then
        old = hookfunction(methods[i], function(...) -- anti http logger (multiple methods)
              local pass = ...
              for met = 1, #cases do 
                   if pass:match(cases[met]) then 
                        pass = "http logging in 2022 damn bro"
                        return pass
                   end
              end
              return ...
        end)
    end
end
 
local gid = game.PlaceId
local Games = {
    [123] = "example"   
}
if table.find(Games, gid) then
    local scs, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/0vma/bin/main/"..gid, true))()
    end)
end
