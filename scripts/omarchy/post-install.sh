yay -Syu --noconfirm
yay -S --noconfirm stow
yay -S --noconfirm opencode-bin
yay -S --noconfirm direnv
yay -S --noconfirm nix

cd ~
rm -rd .config/nvim
rm -rd .config/lazygit

cd dotfiles
stow .
