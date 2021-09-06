export XKB_DEFAULT_OPTIONS=caps:backspace

sway &
doas mount /dev/sda1 /mnt/data

export LANG=en_IE.UTF-8
export LC_CTYPE=en_IE.UTF-8
export LC_ALL=en_IE.UTF-8
export XDG_CONFIG_HOME=/home/keith

# Start ssh-agent & load environment variables
eval `ssh-agent -s`

wifish connect "ARRIS-5E6F"

