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
                    isInRedPool = findInList(constants.RED_POOL, entities[i].SubType)
                    isInBluePool = findInList(constants.BLUE_POOL, entities[i].SubType)
                    isInFleshPool = findInList(constants.BROWN_FLESH_POOL, entities[i].SubType)
                    isInGreyPool = findInList(constants.GRAY_WHITE_POOL, entities[i].SubType)
                    isInPinkPool = findInList(constants.PINK_PURPLE_POOL, entities[i].SubType)
                    isInYellowPool = findInList(constants.ORANGE_YELLOW_POOL, entities[i].SubType)
                    isInGreenPool = findInList(constants.GREEN_POOL, entities[i].SubType)


                    if isInRedPool == true then
                        itemToRoll = constants.RED_POOL[myRNG:RandomInt(#constants.RED_POOL) + 1]
                    elseif isInBluePool == true then
                        itemToRoll = constants.BLUE_POOL[myRNG:RandomInt(#constants.BLUE_POOL) + 1]
                    elseif isInFleshPool == true then
                        itemToRoll = constants.BROWN_FLESH_POOL[myRNG:RandomInt(#constants.BROWN_FLESH_POOL) + 1]
                    elseif isInGreyPool == true then
                        itemToRoll = constants.GRAY_WHITE_POOL[myRNG:RandomInt(#constants.GRAY_WHITE_POOL) + 1]
                    elseif isInPinkPool == true then
                        itemToRoll = constants.PINK_PURPLE_POOL[myRNG:RandomInt(#constants.PINK_PURPLE_POOL) + 1]
                    elseif isInYellowPool == true then
                        itemToRoll = constants.ORANGE_YELLOW_POOL[myRNG:RandomInt(#constants.ORANGE_YELLOW_POOL) + 1]
                    elseif isInGreenPool == true then
                        itemToRoll = constants.GREEN_POOL[myRNG:RandomInt(#constants.GREEN_POOL) + 1]
                    else
                        Isaac.DebugString('ESTE ITEM NO PERTENECE A NADA AUN')
                    end
                    Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.POOF01, -1, entities[i].Position, entities[i].Velocity, PlayerUsed)
                    entities[i]:ToPickup():Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, itemToRoll, true)
                end
            end
        end
    end
end

function findInList(list, toFind) -- find element v of l satisfying f(v)
    for _,v in pairs(list) do
        if v == toFind then
            return true
        end
    end
    return false
end


function item:Init(mod)
    mod:AddCallback(ModCallbacks.MC_USE_ITEM, UseDice, registry.RainbowDice) -- USE_ITEM lets us give a third arg of a filter of what collectible we want to detect got used.
end

return item
