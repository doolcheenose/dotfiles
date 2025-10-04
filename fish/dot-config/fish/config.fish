if status is-interactive
    alias g "git"
    alias ll "ls -lah --color=auto"

    # Much more visible in the terminal than brblack
    set -U pure_color_mute "#888888"

    fish_add_path /home/ian/bin

    set -U EDITOR nvim
end
