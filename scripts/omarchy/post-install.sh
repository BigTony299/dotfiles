yay -Syu --noconfirm
yay -S --noconfirm stow
yay -S --noconfirm opencode-bin
yay -S --noconfirm direnv
yay -S --noconfirm nix

sudo mkdir /nix
sudo chmod -R 755 /nix

cd ~
rm -rd .config/nvim
rm -rd .config/lazygit

cd dotfiles
stow .

cat << 'EOF' >> ~/.bashrc

eval "$(direnv hook bash)"

o() {
    if [[ -z $1 ]]; then
        nvim .
    else
        nvim $1
    fi
}

lz() {
    lazygit $1
}
EOF

cat << 'EOF' >> ~/.config/hypr/looknfeel.conf

windowrule = opacity 1 1, class:.*
EOF

omarchy-theme-install https://github.com/steve-lohmeyer/omarchy-mars-theme

cat > ~/.config/hypr/bindings.conf << 'EOF'
$terminal = uwsm app -- $TERMINAL
$browser = omarchy-launch-browser

bindd = SUPER, return, Terminal, exec, $terminal --working-directory="$(omarchy-cmd-terminal-cwd)"
bindd = SUPER, slash, Passwords, exec, uwsm app -- 1password
bindd = SUPER, A, T3Chat, exec, omarchy-launch-webapp "https://t3.chat"
bindd = SUPER, B, Browser, exec, $browser
bindd = SUPER SHIFT, B, Browser (private), exec, $browser --private
bindd = SUPER, C, Calendar, exec, omarchy-launch-webapp "https://app.hey.com/calendar/weeks/"
bindd = SUPER, D, Discord, exec, omarchy-launch-webapp "https://discord.com/app"
bindd = SUPER, E, Email, exec, omarchy-launch-webapp "https://gmail.com"
bindd = SUPER, F, File manager, exec, uwsm app -- nautilus --new-window
bindd = SUPER, G, Google, exec, omarchy-launch-webapp "https://google.com"
bindd = SUPER, M, Spotify, exec, omarchy-launch-webapp "https://spotify.com"
bindd = SUPER, N, Editor, exec, omarchy-launch-editor
bindd = SUPER, O, Outlook, exec, omarchy-launch-webapp "https://outlook.com"
bindd = SUPER, S, Steam, exec, uwsm app -- Steam
bindd = SUPER, T, Activity, exec, $terminal -e btop
bindd = SUPER, X, X, exec, omarchy-launch-webapp "https://x.com/"
bindd = SUPER, Y, YouTube, exec, omarchy-launch-or-focus-webapp YouTube "https://youtube.com/"
EOF
