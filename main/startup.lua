local ruled = require("ruled")
local awful = require("awful")





---[[ Startup daemons
awful.spawn.with_shell("sh -c 'pgrep picom > /dev/null && pkill picom || picom --experimental-backends --config ~/.config/picom/picom.conf &'")
---]]

---[[ Startup rules
-- awful.spawn.single_instance("spotify")
-- Select tag by object reference:
ruled.client.append_rule {
    rule_any    = {
        class = {'Firefox'}
    },
    properties = {
        tag = screen[1].tags[2],
    },
}

local l = awful.layout.suit  -- Just to save some typing: use an alias.
-- Select tag by name:
ruled.client.append_rule {
    rule_any    = {
        class = {'Thunderbird'}
    },
    properties = {
        screen = 1,
        new_tag = {
            name = "",
            layout = l.max,
        },
    },
}
---]]

---[[ Startup Spawn
awful.spawn('firefox')
awful.spawn('thunderbird')
---]]
