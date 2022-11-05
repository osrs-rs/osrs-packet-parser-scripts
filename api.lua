Player = {}
Player.__index = Player
Player.Skills = {}
Player.Skills[1] = 456

function Player:get_skill(id)
    return self.Skills[id]
end

print(Player:get_skill(1))

-- Handler for packets to be sent to the server
function on_send_packet(buf)
end

-- Handler for packets received from the server
function on_recv_packet(buf)
end
