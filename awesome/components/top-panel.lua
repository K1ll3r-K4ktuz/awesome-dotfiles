--      ████████╗ ██████╗ ██████╗     ██████╗  █████╗ ███╗   ██╗███████╗██╗
--      ╚══██╔══╝██╔═══██╗██╔══██╗    ██╔══██╗██╔══██╗████╗  ██║██╔════╝██║
--         ██║   ██║   ██║██████╔╝    ██████╔╝███████║██╔██╗ ██║█████╗  ██║
--         ██║   ██║   ██║██╔═══╝     ██╔═══╝ ██╔══██║██║╚██╗██║██╔══╝  ██║
--         ██║   ╚██████╔╝██║         ██║     ██║  ██║██║ ╚████║███████╗███████╗
--         ╚═╝    ╚═════╝ ╚═╝         ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝╚══════╝

-- ===================================================================
-- Initialization
-- ===================================================================


local awful = require("awful")
local beautiful = require("beautiful")
local wibox = require("wibox")
local gears = require("gears")
local dpi = beautiful.xresources.apply_dpi


-- import widgets
local task_list = require("widgets.task-list")
local tag_list = require('widgets.tag-list')
local vseparator = require("widgets.vertical-separator")
local battery = require('widgets.battery')
local layout_box = require("widgets.layout-box")
local calendar = require("widgets.calendar")
local volume = require("widgets.volume-widget.volume")

-- define module table
local top_panel = {}

--create separator
wibox.widget {
    separator = wibox.widget.separator
}

-- ===================================================================
-- Bar Creation
-- ===================================================================

top_panel.create = function(s)
   local panel = awful.wibar({
      bg = "#21293300",
      border_width = 0,
      border_color = "#21293300",
      screen = s,
      position = "top",
      shape = gears.shape.rectangle,
      height = beautiful.top_panel_height,
      width = s.geometry.width,
   })

   panel:setup {
      expand = "none",
      layout = wibox.layout.align.horizontal,
      {
         layout = wibox.layout.fixed.horizontal,
         vseparator,
         tag_list.create(s),
         vseparator,
         task_list.create(s),
      },
         separator,
      {
         layout = wibox.layout.fixed.horizontal,
         {
               	wibox.layout.margin(wibox.widget.systray(true), 4, 4, 3, 3),
--              	shape = gears.shape.rectangle,
               	bg = "#2e7589",
              	widget = wibox.container.background
         },
	 vseparator,
	 {
		awful.widget.keyboardlayout(),
--	  	shape = gears.shape.rounded_bar,
               	bg = "#21293300",
               	widget = wibox.container.background
	 },
 	 vseparator,
	 {
		volume({display_notification = true}),
		shape = gears.shape.rectangle,
		bg = "#21293300",
		widget = wibox.container.background
	 },
	 vseparator,
         {
               	battery,
               	shape = gears.shape.rounded_bar,
               	shape_border_width = 1000,
              	bg = "#21293300",
               	widget = wibox.container.background
         },
         vseparator,
         {
               	layout_box,
               	shape = gears.shape.rounded_bar,
               	bg = "#21293300",
               	widget = wibox.container.background
         },
         vseparator,
         {
               	calendar,
               	shape = gears.shape.rounded_bar,
               	bg = "#21293300",
               	shape_clip = true,
               	widget = wibox.container.background
         },
         vseparator,

      }
   }
end

return top_panel
