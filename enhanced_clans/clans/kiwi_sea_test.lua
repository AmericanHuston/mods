local storage = core.get_mod_storage()
clansmod.add_to_clan(issuer, playername, false, tbd)

core.register_chatcommand("assign_clan", {
    func = function(name, param)
       local average_team_lvl
        local player = core.get_player_by_name(name)
        local player = player:get_player_name()
     if
})

function clansmod.players_per_clan(clan)
    for _, player in ipairs(minetest.get_connected_players()) do
        table.insert(ptable, player:get_player_name())
        
end


function clansmod.players_online()
    local ptable
    for _, player in ipairs(minetest.get_connected_players()) do
        table.insert(ptable, player:get_player_name())
    end

    local online = #ptable
    return online
    
end