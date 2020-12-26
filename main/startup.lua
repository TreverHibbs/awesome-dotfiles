local ruled = require("ruled")
local awful = require("awful")





---[[ Startup daemons
awful.spawn.with_shell("sh -c 'pgrep picom > /dev/null && pkill picom || picom --experimental-backends --config ~/.config/picom/picom.conf &'")
---]]

---[[ Startup rules
local last_tag_id = 0
local l = awful.layout.suit  -- Just to save some typing: use an alias.
ruled.client.append_rule {
    rule_any    = {
        class = {'Firefox'}
    },
    properties = {
        screen = 1,
        new_tag = {
            name = string.format("%d", last_tag_id),
            layout = l.tile.left,
        },
    },
}

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
