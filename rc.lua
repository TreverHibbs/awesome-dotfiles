--[[
  _______   ______         ___      ____  ____      __      
 /"      \ /" _  "\       |"  |    ("  _||_ " |    /""\     
|:        (: ( \___)      ||  |    |   (  ) : |   /    \    
|_____/   )\/ \           |:  |    (:  |  | . )  /' /\  \   
 //      / //  \ _   _____ \  |___  \\ \__/ //  //  __'  \  
|:  __   \(:   _) \ ))_  "| \_|:  \ /\\ __ //\ /   /  \\  \ 
|__|  \___)\_______|_____( \_______|__________|___/    \___)

--]]
-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")
-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")
-- Widget and layout library
local wibox = require("wibox")
-- Theme handling library
local beautiful = require("beautiful")
-- Notification library
local naughty = require("naughty")
local menubar = require("menubar")
local hotkeys_popup = require("awful.hotkeys_popup")
-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
require("awful.hotkeys_popup.keys")
-- Load Debian menu entries
local debian = require("debian.menu")
local has_fdo, freedesktop = pcall(require, "freedesktop")
-- ===================================================================
---[[ Error handling
require("main.error-handling")
--]]
-- ===================================================================
-- set pretty things
---[[
colors = beautiful.xresources.get_current_theme()
--]]
-- ===================================================================
-- Custom Local Library
local main = {
  layouts = require("main.layouts"),
}
-- ============================================================================
require("main.user-variables")
-- ============================================================================
-- Themes define colours, icons, font and wallpapers.
beautiful.init(string.format("%s/.config/awesome/themes/%s/theme.lua", os.getenv("HOME"), chosen_theme))
-- ============================================================================
awful.layout.layouts = main.layouts
-- ============================================================================
require("main.main-menu")
-- ============================================================================
-- Keyboard map indicator and switcher
mykeyboardlayout = awful.widget.keyboardlayout()
-- ============================================================================
--[[
 __   __  ___  __    _______      __       _______   
|"  |/  \|  "||" \  |   _  "\    /""\     /"      \  
|'  /    \:  |||  | (. |_)  :)  /    \   |:        | 
|: /'        ||:  | |:     \/  /' /\  \  |_____/   ) 
 \//  /\'    ||.  | (|  _  \\ //  __'  \  //      /  
 /   /  \\   |/\  |\|: |_)  :)   /  \\  \|:  __   \  
|___/    \___(__\_|_|_______(___/    \___)__|  \___) 
--]]
require("deco.statusbar")
-- ============================================================================
---[[ Startup apps
awful.spawn.single_instance("picom")
awful.spawn.single_instance("spotify")
-- ============================================================================
-- set possition of monitors
awful.spawn("xrandr --output DP-1 --auto --right-of HDMI-1")
-- ============================================================================
require("bindings.mouse")
require("bindings.global")
require("bindings.client-keys")
-- ============================================================================
require("main.client")

--[[
  _______ _____  ___  ________   
 /"     "(\"   \|"  \|"      "\  
(: ______).\\   \    (.  ___  :) 
 \/    | |: \.   \\  |: \   ) || 
 // ___)_|.  \    \. (| (___\ || 
(:      "|    \    \ |:       :) 
 \_______)\___|\____\|________/  
                                 
--]]
