
source ~/.config/antigen/antigen.zsh

# use oh my zsh
antigen use oh-my-zsh

# set plugins (plugins not part of oh my zsh can be installed by github username)
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions



antigen theme romkatv/powerlevel10k 


antigen apply


#aliases 
alias install="sudo pacman -S"
alias upgrade="sudo pacman -Syu"
alias vim="nvim"
alias doomsync="~/.emacs.d/bin/doom sync"
# End of lines added by compinstall

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
