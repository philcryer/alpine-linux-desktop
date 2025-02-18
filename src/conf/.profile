export XDG_RUNTIME_DIR=$(mkrundir)

if [ -z "$XDG_RUNTIME_DIR" ]; then
	XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"
	mkdir -pm 0700 "$XDG_RUNTIME_DIR"
	export XDG_RUNTIME_DIR
fi

XDG_DATA_DIRS="/var/lib/flatpak/exports/share:$XDG_DATA_DIRS"

export $(dbus-launch)
#/usr/libexec/pipewire-launcher &

# audio button controls
#bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ +5%
#bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ -5%
#bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute @DEFAULT_SINK@ toggle
#bindsym XF86AudioMicMute exec --no-startup-id pactl set-source-mute @DEFAULT_SOURCE@ toggle

# add Flatpak apps to PATH
if [ -d "/var/lib/flatpak/exports/bin" ]; then
    PATH="/var/lib/flatpak/exports/bin:$PATH"
fi

if [ -d "$HOME/.local/share/flatpak/exports/bin" ]; then
     PATH="$HOME/.local/share/flatpak/exports/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ]; then
   	PATH=$HOME/.local/bin:$PATH
fi

if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

export PATH

## ulauncher --daemon
#[[ $(type -P ulauncher) ]] && ulauncher --daemon


if [ -f "$HOME/.zshrc" ]; then
    source $HOME/.zshrc
fi

#if [ -f "$HOME/.bash_profile" ]; then
#    source $HOME/.bash_profile
#fi

