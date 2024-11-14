local storage = core.get_mod_storage()

core.register_on_dieplayer(function(player, reason)
    --clansmod.killer(player, player)
    core.chat_send_player(player, reason)
end
)

core.register_on_joinplayer(function(player, last_login)
    if last_login == nil then
        storage:set_int(player .. "-level", 0)
    end
end    
)

function clansmod.killer(killer, victim)
    local klevel = storage:get_int(killer .. "-level")
    local vlevel = storage:get_int(victim .. "-level")

    if vlevel ~= 0 then
        vlevel = vlevel - 1
        storage:set_int(victim .. "-level", vlevel)
    end

    if klevel ~= 5 then
        klevel = klevel + 1
        storage:set_int(killer .. "-level", klevel)
    end
end
