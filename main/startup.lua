local ruled = require("ruled")
local awful = require("awful")





---[[ Startup daemons
awful.spawn.with_shell("sh -c 'pgrep picom > /dev/null && pkill picom || picom --experimental-backends --config ~/.config/picom/picom.conf &'")
---]]

---[[ Increment functions
function increment (id)
    id = id + 1
    return id
end
---]]

---[[ Startup rules
local last_tag_id = 1
--local l = awful.layout.suit  -- Just to save some typing: use an alias.
--ruled.client.append_rule {
--    rule_any    = {
--        class = {'Firefox'}
--    },
--    properties = {
--        tag = screen[1].tags[2],
----        new_tag = {
----            name = string.format("%d", last_tag_id),
----            layout = l.tile.left,
----        },
--    },
--}
--last_tag_id = last_tag_id + 1
--
---- Select tag by name:
--ruled.client.append_rule {
--    rule_any    = {
--        class = { 'Thunderbird', 'discord', 'Slack' }
--    },
--    properties = {
--        tag = screen[1].tags[3],
--    },
--}
--last_tag_id = last_tag_id + 1
--
---- Select tag by name:
--ruled.client.append_rule {
--    rule_any    = {
--        class = { 'Spotify' }
--    },
--    properties = {
--        tag = screen[1].tags[6],
--    },
--}
--last_tag_id = last_tag_id + 1
--
---- Select tag by name:
--ruled.client.append_rule {
--    rule_any    = {
--        class = { 'Anki' }
--    },
--    properties = {
--        tag = screen[1].tags[5],
--    },
--}
--last_tag_id = last_tag_id + 1
--
---- Select tag by name:
--ruled.client.append_rule {
--    rule_any    = {
--        class = { 'URxvt' }
--    },
--    properties = {
--        tag = screen[1].tags[4],
--    },
--}
--last_tag_id = last_tag_id + 1
---]]

---[[ Startup Spawn
awful.spawn.single_instance('firefox', {
    tag = screen[1].tags[2],
})
--awful.spawn.single_instance('thunderbird')
--awful.spawn.single_instance('slack')
--awful.spawn.single_instance('discord')
--awful.spawn.single_instance('urxvt')
awful.spawn.single_instance('anki', {
    tag = screen[1].tags[5],
})
--awful.spawn.single_instance('spotify')
---]]


---[[ Clear all tag rules
--ruled.client.append_rule {
--    rule_any    = {
--        class = { 'Thunderbird', 'discord', 'Slack', 'Spotify', 'Firefox', 'Anki', 'URxvt' }
--    },
--    properties = {
--        tag = awful.screen.focused().selected_tags,
--    },
--}
---]]
