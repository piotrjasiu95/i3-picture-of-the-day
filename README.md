<h1>I3 Picture of the Day</h1>

I3 Picture of the Day is a simple wallpaper fetcher designed to automatically download and set the daily image from various sources as your desktop wallpaper, although right now only NASA picture of the day is implemented.

## Features

- **Automatic Wallpaper Updates**: Automatically fetches the daily image from NASA APOD and sets it as your wallpaper.
- **Automatic Image Saving**: Save wallpapers form previous days on your drive.
- **Customizable**: Easily configurable settings to adjust wallpaper options and save locations.
- **Lightweight**: Minimal resource usage, designed to run efficiently in the background.
- **Systemd Integration**: Simple installation and management via systemd services and timers.

## Installation

You can install the program using your package manager or manually from the source. If using Arch Linux, simply build the package with `makepkg -si` 

For pacman users the repository:
<code>
   git clone https://github.com/piotrjasiu95/i3-picture-of-the-day.git
   cd i3-picture-of-the-day
   makepkg -si 
</code>

For any other distributions you can use install.sh script for installation.

## Configuration

Config file is to be found in $XDG_CONFIG_HOME/i3-picture-of-the-day/config and by default looks like this:
<code>
feh_options=--bg-fill
save=false
save_location=~/Pictures/picture-of-the-day/nasa/
</code>

## Dependencies

Only requiermens are: 'feh' 'curl' 'jq' 'systemd' 

## License

This project is licensed under the MIT License. See the LICENSE file for details.
