if print == loadstring then game:shutdown(); -- common anti dump check (doubt anyone would actually use this LOL)
local methods = {print, warn, error, rconsoleprint, rconsolewarn, rconsoleerr, rconsoleinfo}
for i = 1, #methods do
    if typeof(methods[i]) == 'function' then
        old = hookfunction(methods[i], function(...) -- anti http logger (multiple methods)
              pass = ...
              if pass:match('loadstring') or pass:match('github') then
                  pass = 'well you tried atleast'
                  return pass
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
    if not scs and err then 
        if syn then
            rconsoleprint('@@RED@@')
            rconsoleprint('script failed to load, wait until it gets fixed, ERROR CODE #001 - invalid loadstring link')
        else
             print('script failed to load, wait until it gets fixed, ERROR CODE #001 - invalid loadstring link')
        end
    end
end
