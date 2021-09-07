export XKB_DEFAULT_OPTIONS=caps:backspace

sway &

# Moved to fstab, left in for reference
# doas mount /dev/sda1 /mnt/data -o uid=keith -o mode=0775

export LANG=en_IE.UTF-8
export LC_CTYPE=en_IE.UTF-8
export LC_ALL=en_IE.UTF-8
export XDG_CONFIG_HOME=/home/keith

# Set starting wallpaper to a random image from current desktop images folder
ln -fs $(ls ~/desktop/2021/September/*.jpg | shuf -n 1) /home/keith/wallpaper.img

alias ap='SDL_AUDIODRIVER="alsa" ffplay -nodisp -nostats -hide_banner'

wifish connect "ARRIS-5E6F"

