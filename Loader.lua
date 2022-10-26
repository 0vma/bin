if print == loadstring then game:shutdown(); -- common anti dump check (doubt anyone would actually use this LOL)
local methods = {"print", "warn", "error", "rconsoleprint", "rconsolewarn", "rconsoleerr", "rconsoleinfo"}
for i = 1, #methods do
    old = hookfunction(methods[i], function(...) -- anti http logger (multiple methods)
          pass = ...
          if pass:match('loadstring') or pass:match('github') then
              pass = 'well you tried atleast'
              return pass
          end
          return old 
    end)
end
 
local gid = game.PlaceId
local Games = {
    [123] = "example"   
}
if table.find(Games, gid) then
    loadstring(https://
