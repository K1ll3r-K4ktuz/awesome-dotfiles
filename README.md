<div align="center">
    <h1>Awesome Dotfiles</h1>
</div>

[![HitCount](http://hits.dwyl.io/willpower3309/awesome-dotfiles.svg)](http://hits.dwyl.io/willpower3309/awesome-dotfiles)

![](/screenshot.png)

## Some stuff to do ##
+ Add Firefox config
+ Change icons for some custom ones
+ Adapt the volume widget to the top panel so it's more centered

## Contents ##
1. [Details](#details)
2. [Features](#features)
3. [Dependencies](#dependencies)
4. [Installation](#installation)
5. [Folder Structure](#folderStructure)
6. [My Preferred Applications](#applications)
7. [Application Theming](#appTheming)
8. [Keybinds](#keybinds)
9. [Notes](#notes)

<a name="details"></a>
## Details ##
+ **OS**: Arch Linux
+ **Shell**: Fish
+ **WM**: awesome
+ **GTK3 Theme**: Fleon
+ **Kvantum Theme**: Sweet Mars
+ **Icons**: Tela Pink
+ **Cursor**: Sorely's Warcraft Cursors
+ **Terminal**: Alacritty

<a name="features"></a>
## Features ##
+ Lightweight
+ Easy configuration
+ Few dependencies
+ Exit screen
+ Locking (via `xsecurelock`)
+ Touch screen friendly (I guess, I've never had any problem with the touchscreen in my Toshiba Satellite :) )
+ Supports multi monitor setups using xrandr and arandr, so it's actually kind of manual the config. When changing the number of monitors simply restart awesome with mod+ctrl+r
+ Very stable: As stable as Arch can be hahaha

<a name="dependencies"></a>
## Dependencies ##

|Dependency|Description|
|:----------:|:-------------:|
|`awesome`|Window manager|
|`feh`|Fast image viewer used as wallpaper setting utility|
|`picom`|Window compositor, eliminates screen tearing and allows for cool fade effects. More precisely iBhagwan's compton|picom fork, which can be installed from the AUR if you are on Arch|
|`rofi`|Application launcher|
|`xsecurelock`|Used to lock the screen|

### Optional Dependencies ###
These will improve the user experience but aren't required:
**Bear in mind that most of these dependencies come preinstalled on non arch systems. I would recommend reading their descriptions below to determine which ones you need to install.**
+ `xscecurelock`: Will be opened when the lock icon is selected in the exit window
+ `acpi`: Battery managing cli application, used by top bar widget to determine battery status
+ `xfce4-power-manager`: Lightweight power manager spawned when the top panel battery icon is clicked
+ `bluez`, `bluez-utils`: Bluetooth cli application, used by top bar widget to determine if bluetooth is on
+ `blueman`: Bluetooth managing application, spawns when the bluetooth top panel icon is clicked
+ `nm-connection-editor`: GUI wifi connection editor, spawned when the top panel wifi icon is clicked
+ `spectacle`: Screenshot tool from KDE. It is mapped to the Print Screen key in keys.lua.
+ `alsa-utils`: Provides kernel driven sound drivers, which the control of has been mapped to volume keys in keys.lua
  + At least for me, pulseaudio (using pamixer) has given me less problems with the volume slider detecting the changes in volume
+ `light`: Controls display brightness.

### Fonts You Should Install ###
+ Nerd Fonts. Mainly Iosevka, but it is easy to change it to your linking in theme.lua for awesome and alacritty.yml for alacritty.

<a name="installation"></a>
## Installation ##
1. Ensure all [dependencies](#dependencies) are met
2. Clone this repository and place its contents into your `.config` folder
3. navigate to the `awesome/wallpaper` folder and place your desired wallpaper there, ensuring that it is named `wallpaper`. One  awesome (pun intended) feature of my config is that the filetype of the wallpaper can be any image filetype and it will automatically recognize it.
4. edit the `apps.lua` file to define your desired defaults.
	+ The original [repo from which this is forked](https://github.com/WillPower3309/awesome-dotfiles) has the setup to autostart applications, but I have not been able to replicate it, so I add the autostarted applications and scripts directly to rc.lua.
5. If the wifi top bar widget is not working, edit the `widgets/wifi.lua` file and ensure that the `local interface` variable matches your wifi interface name (if you are unsure how to find your interface name, check out [this discussion](https://bbs.archlinux.org/viewtopic.php?id=166171)).
6. optional: edit the `keys.lua` file to change / add keybinds.

<a name="folderStructure"></a>
## Awesome Folder File Structure ##
In order to avoid a poorly organized `rc.lua` spanning thousands of lines, it has been split into multiple files / folders. I have taken extra care to create a logical directory structure that will hopefully allow those new to awesomewm to have an easy time navigating it.
+ `rc.lua`: Contains the script that runs when awesome starts (essentially links all the other files together)
+ `apps.lua`: Contains the default and startup applications
+ `keys.lua`: Contains keybinds
+ `rules.lua`: Contains window rules
+ `theme.lua`: Contains theme variables
+ `tags.lua`: Contains tag (aka workspace) information, edit this to change the tag's icon and behaviour
+ `icons`: stores icons used in WM
+ `components`: Folder that contains all of the components of the WM, such as panels, volume and brightness sliders, notification pop-ups, etc
+ `widgets`: Stores widgets used in the functionality of the components
+ `wallpaper`: Where wallpaper is stored. Just copy any image you want as wallpaper to this directory as `wallpaper.jpg/png`.

<a name="applications"></a>
## My Preferred Applications ##
+ **Text Editor - nvim**: Because I don't know how to use emacs.
+ **File Manager - Nemo**: Finding it wasn't actually that hard.
+ **Web Browser - Firefox**: Super configurable and isn't made by Google.
+ **Terminal - Alacritty**: Gotta go fast.
+ **Theme / Look & Feel Manager - lxappearance**: makes managing icon / cursor / application themes easy, only theme manager with no DE dependencies, and works very well
  + Also **Kvantum** for some QT5 applications like VLC, cantata and spectacle.
+ **Okular**: It is the only PDF reader that has all the features I need.

### Other cool applications you should install ###
+ `neofetch`: Displays system information in the terminal.
  + `ufetch`: a simple bash script that displays system information. Simpler than neofetch but with the tradeoff that it's not as easy to set ascii art.
+ `tmatrix`: I like to impress my friends and coworkers so they think I'm a 133t H4x0r.
+ `ncmpcpp`: The more things I can do on terminal the better ;)
+ `cantata`: I like ncmpcpp but sometimes is just too simple for me.
+ `cava`: Terminal audio visualizer!

<a name="appTheming"></a>
## Application Theming ##

### Neovim ###

1. Copy nvim config (the nvim directory) to your config
2. Install a plugin manager that lets you use the plugins in the init.nvim
3. Open neovim and install them (if you use vim-plug just :PlugInstall)
4. Exit and reopen neovim
5. Enjoy my shitty setup

### Fish ###
1. Install fish
2. Copy fish config
3. ???
4. Profit.

<a name="keybinds"></a>
## Keybinds ##
**Note that the modkey is set to be the windows / command key. If you would like to use a different modkey check out the `keys.lua` file.**
If you are new to awesomewm, note that tag refers to workspace, and client refers to window.

### Keyboard ###
+ `mod + ctrl + t`: Spawn terminal
+ `mod + r`: Spawn rofi (an application menu)
+ `mod + f`: Make client fullscreen
+ `mod + m`: Maximize client
+ `mod + n`: Minimize client
+ `mod + shift + n`: Unminimize client
+ `mod + [1-9]`: Switch to tag [1-9]
+ `mod + shift + [1-9]`: Move client to tag [1-9]
+ `mod + space`: Change the tag layout, alternating between tiled, floating, and maximized
+ `mod + [up / down / left / right / h / j / k / l]`: Change client by direction
+ `mod + Shift + [up / down / left / right / h / j / k / l]`: Move client by direction
+ `mod + shift + q`: Show exit screen
+ `mod + Control + space`: Toggle floating client window

### Mouse ###
+ `mod + drag with left click`: Move client
+ `mod + drag with right click`: Resize client

<a name="notes"></a>
## Notes ##
+ [Awesome API Documentation](https://awesomewm.org/apidoc/index.html)
+ This is a fork from [this](https://github.com/WillPower3309/awesome-dotfiles) and the original one is cooler. Check it out :)
+ If you encounter any problems please open an issue in this repo and I can ignore it because I basically know nothing about programming but may be I will test it sometime in the future to see if I can replicate it.
+ If you would like to change the wallpaper, ensure that the wallpaper is named "wallpaper" and is located in the `~/.config/awesome` folder.
