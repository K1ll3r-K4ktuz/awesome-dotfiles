--  ██████╗ ██████╗ ██╗ ██████╗ ██╗  ██╗████████╗███╗   ██╗███████╗███████╗███████╗
--  ██╔══██╗██╔══██╗██║██╔════╝ ██║  ██║╚══██╔══╝████╗  ██║██╔════╝██╔════╝██╔════╝
--  ██████╔╝██████╔╝██║██║  ███╗███████║   ██║   ██╔██╗ ██║█████╗  ███████╗███████╗
--  ██╔══██╗██╔══██╗██║██║   ██║██╔══██║   ██║   ██║╚██╗██║██╔══╝  ╚════██║╚════██║
--  ██████╔╝██║  ██║██║╚██████╔╝██║  ██║   ██║   ██║ ╚████║███████╗███████║███████║
--  ╚═════╝ ╚═╝  ╚═╝╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═══╝╚══════╝╚══════╝╚══════╝


-- ================
-- Initialization
-- ================


local wibox = require("wibox")
local awful = require("awful")
local gears = require("gears")
local beautiful = require("beautiful")
local dpi = beautiful.xresources.apply_dpi

local offsetx = dpi(56)
local offsety = dpi(300)
local screen = awful.screen.focused()


-- ===================================================================
-- Appearance & Functionality
-- ===================================================================


-- create the brightness component
local brightness = wibox({
   screen = awful.screen.focused(),
   x = screen.geometry.width - offsetx,
   y = (screen.geometry.height / 2) - (offsety / 2),
   width = dpi(48),
   height = offsety,
   shape = gears.shape.rounded_rect,
   visible = false,
   ontop = true
})

local brightness_bar = wibox.widget{
   widget = wibox.widget.progressbar,
   shape = gears.shape.rounded_bar,
   color = "#ED4D93",
   background_color = beautiful.bg_focus,
   max_value = 100,
   value = 0
}

brightness:setup {
   layout = wibox.layout.align.vertical,
   {
      wibox.container.margin(
         brightness_bar, dpi(14), dpi(20), dpi(20), dpi(20)
      ),
      forced_height = offsety * 0.75,
      direction = "east",
      layout = wibox.container.rotate
   },
   wibox.container.margin(
      wibox.widget{
	 image = gears.filesystem.get_configuration_dir() .. "/icons/brightness.png",
	 widget = wibox.widget.imagebox
      }, dpi(7), dpi(7), dpi(14), dpi(14)
   )
}

-- timer to hide the adjust bar
local hide_brightness = gears.timer {
   timeout = 4,
   autostart = true,
   callback = function()
      brightness.visible = false
   end
}

-- show brightness when "brightness_change" signla is emitted
awesome.connect_signal("brightness_change",
   function()
      -- set new brightness value
      awful.spawn.easy_async_with_shell(
         "light -G",
	 function(stdout)
	    brightness_bar.value = tonumber(stdout)
	 end,
         false
      )

      -- make brightness component visible
      if brightness.visible then
	 hide_brightness:again()
      else
	 brightness.visible = true
	 hide_brightness:start()
      end
   end
)
