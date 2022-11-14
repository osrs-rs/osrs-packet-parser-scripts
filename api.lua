local function print_packet(buf)
    local data_str = "Sent packet: ["
    for _,v in ipairs(buf) do
        data_str =  data_str.."0x"..string.format("%X",v)..", "
    end
    data_str = data_str:sub(1, -3).."]"
    print(data_str)
end


-- Handler for packets to be sent to the server
function on_send_packet(buf)
    print_packet(buf)
end

-- Handler for packets received from the server
function on_recv_packet(buf)
end

--[[
    Player = {}
Player.__index = Player
Player.Skills = {}
Player.Skills[1] = 456

function Player:get_skill(id)
    return self.Skills[id]
end

print(Player:get_skill(1))
]]