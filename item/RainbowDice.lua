local registry = include("ItemRegistry")
local Game = Game()
local item = {}
local myRNG = RNG()
local dice = Isaac.GetItemIdByName("Rainbow Dice")
local constants = require("pools/Pools")


local function UseDice()
    player:AnimateCollectible(dice, "UseItem", "PlayerPickupSparkle")
    local entities = Isaac:GetRoomEntities()
    for i=1, #entities do
        if entities[i].Type == EntityType.ENTITY_PICKUP then
            if entities[i].Variant == PickupVariant.PICKUP_COLLECTIBLE then
                if entities[i].SubType ~= 0 then
                    -- entities[i].SubType is the item id
                    -- Isaac.DebugString(entities[i].SubType)
                    -- Isaac.DebugString(constants.RED_POOL[2])
                    if entities[i].SubType ~= 668 then --prevent to roll dads note

                        isInRedPool = findInList(constants.RED_POOL, entities[i].SubType)
                        isInBluePool = findInList(constants.BLUE_POOL, entities[i].SubType)
                        isInFleshPool = findInList(constants.BROWN_FLESH_POOL, entities[i].SubType)
                        isInGreyPool = findInList(constants.GRAY_WHITE_POOL, entities[i].SubType)
                        isInPinkPool = findInList(constants.PINK_PURPLE_POOL, entities[i].SubType)
                        isInYellowPool = findInList(constants.ORANGE_YELLOW_POOL, entities[i].SubType)
                        isInGreenPool = findInList(constants.GREEN_POOL, entities[i].SubType)
                        isInMulticolorPool = findInList(constants.MULTICOLOR_POOL, entities[i].SubType)
                        local color
                        local counter = 1
                        while true do
                            if isInRedPool == true then
                                color = Color(255, 10, 10, 0.3)
                                itemToRoll = constants.RED_POOL[myRNG:RandomInt(#constants.RED_POOL) + 1]
                            elseif isInBluePool == true then
                                color = Color(0, 21, 255, 0.3)
                                itemToRoll = constants.BLUE_POOL[myRNG:RandomInt(#constants.BLUE_POOL) + 1]
                            elseif isInFleshPool == true then
                                color = Color(1, 1, 1, 0.3)
                                color:SetColorize(19, 15, 12, 1)
                                itemToRoll = constants.BROWN_FLESH_POOL[myRNG:RandomInt(#constants.BROWN_FLESH_POOL) + 1]
                            elseif isInGreyPool == true then
                                color = Color(107, 107, 107, 0.1)
                                itemToRoll = constants.GRAY_WHITE_POOL[myRNG:RandomInt(#constants.GRAY_WHITE_POOL) + 1]
                            elseif isInPinkPool == true then
                                color = Color(122, 10, 76, 0.3)
                                itemToRoll = constants.PINK_PURPLE_POOL[myRNG:RandomInt(#constants.PINK_PURPLE_POOL) + 1]
                            elseif isInYellowPool == true then
                                -- color = Color(255, 255, 10, 0.3)
                                color = Color(1, 1, 1, 0.3)
                                color:SetColorize(232, 220, 10, 0.4)
                                itemToRoll = constants.ORANGE_YELLOW_POOL[myRNG:RandomInt(#constants.ORANGE_YELLOW_POOL) + 1]
                            elseif isInGreenPool == true then
                                color = Color(10, 255, 10, 0.3)
                                itemToRoll = constants.GREEN_POOL[myRNG:RandomInt(#constants.GREEN_POOL) + 1]
                            elseif isInMulticolorPool == true then
                                color = Color(1, 1, 1, 0.3)
                                color:SetColorize(4, 0, 4, 1)
                                itemToRoll = constants.MULTICOLOR_POOL[myRNG:RandomInt(#constants.MULTICOLOR_POOL) + 1]
                            else
                                itemToRoll = myRNG:RandomInt(719) + 1 --if the user rolls a modded item it rolls to a random item
                            end
                            if findInList(constants.BANNED_POOL, itemToRoll) == false and player:HasCollectible(itemToRoll) == false then -- if true means that rolled into banned item like negative
                                -- If we enter this statement means that all conditions are OK, we give this id to the user
                                break
                            end
                            counter = counter + 1
                            if counter > 20 then
                                itemToRoll = myRNG:RandomInt(719) + 1 --if the selection takes a lot of tries we give a random item
                                break -- no one is going to get in this situation
                            end
                            Isaac.DebugString(counter)
                        end
                        local effect = Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.POOF01, -1, entities[i].Position, entities[i].Velocity, PlayerUsed) -- The animation
                        effect:SetColor(color, 60, 1, false, true)
                        entities[i]:ToPickup():Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, itemToRoll, true) -- The roll
                    end
                end
            end
        end
    end
end

-- Returns true if the element is on the list. False otherwise
function findInList(list, toFind) -- find element v of l satisfying f(v)
    for _,v in pairs(list) do
        if v == toFind then
            return true
        end
    end
    return false
end


function item:Init(mod)
    mod:AddCallback(ModCallbacks.MC_USE_ITEM, UseDice, registry.RainbowDice) --Use active item callback
end

return item
