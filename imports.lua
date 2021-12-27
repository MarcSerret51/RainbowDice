local includes = {}

local items = {
  include("item/RainbowDice")
}

function includes:Init(mod)
  -- do your inits here
  for _, item in pairs(items) do
    item:Init(mod)
  end
end

return includes