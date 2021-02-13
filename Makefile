main:
	rm -rf ~/.config/tmux
	rm -rf ~/.config/nvim
	rm -rf ~/.config/zsh
	rm -rf ~/.config/shell
	rm -rf ~/.config/fontconfig
	mkdir -p ~/.config/tmux
	mkdir -p ~/.config/nvim
	mkdir -p ~/.config/zsh
	mkdir -p ~/.config/shell
	mkdir -p ~/.config/fontconfig
	stow --dotfiles -R --verbose=3 -t ~/.config/tmux tmux
	stow --dotfiles -R --verbose=3 -t ~/.config/nvim nvim
	stow --dotfiles -R --verbose=3 -t ~/.config/zsh zsh
	stow --dotfiles -R --verbose=3 -t ~/.config/shell shell
	stow --dotfiles -R --verbose=3 -t ~/.config/fontconfig fontconfig
	stow --dotfiles -R --verbose=3 -t ~/.config aliases
