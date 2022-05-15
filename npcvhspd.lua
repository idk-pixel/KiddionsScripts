-- idea by https://www.reddit.com/user/Holwenator/
-- coded by whoaboutyt

local TOWN_SPEED = 0.15
local CONNECTING_ROADS_SPEED = 0.20 
local HIGHWAY_SPEED = 0.25

local SBM = menu.add_submenu('NPC Spoof')

SBM:add_action('Town Speed Set', function ()
    local PlayerPed = localplayer
    local VehicleStatus = PlayerPed:is_in_vehicle()

    if VehicleStatus == false then
        return print('Error: Not In vehicle')
    end

    
    local Vch = PlayerPed:get_current_vehicle()

    Vch:set_acceleration(TOWN_SPEED)
end)
SBM:add_action('Connecting Speed Set', function ()
    local PlayerPed = localplayer
    local VehicleStatus = PlayerPed:is_in_vehicle()

    if VehicleStatus == false then
        return print('Error: Not In vehicle')
    end

    
    local Vch = PlayerPed:get_current_vehicle()

    Vch:set_acceleration(CONNECTING_ROADS_SPEED)
end)
SBM:add_action('Highway Speed Set', function ()
    local PlayerPed = localplayer
    local VehicleStatus = PlayerPed:is_in_vehicle()

    if VehicleStatus == false then
        return print('Error: Not In vehicle')
    end

    
    local Vch = PlayerPed:get_current_vehicle()

    Vch:set_acceleration(HIGHWAY_SPEED)
end)
