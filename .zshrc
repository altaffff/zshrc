# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000000000000
SAVEHIST=1000000000000

setopt autocd extendedglob nomatch notify
unsetopt beep
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/alt/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#------------PLUGINS-------------------
source /home/alt/.config/.zsh/sudo.plugin.zsh 
source /home/alt/.config/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/alt/.config/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/alt/.config/.zsh/colored-man-pages.plugin.zsh
source /home/alt/.config/.zsh/compleat.plugin.zsh
source /home/alt/.config/.zsh/zsh-interactive-cd.plugin.zsh
#---------------------------------------
# Case insensitive
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit
# Theme
source /home/alt/.config/.zsh/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

#alias for nvim
alias vim="nvim"
alias vi="nvim"
alias nv="nvim"
#alias for pacman 
alias install="sudo pacman -Sy"
alias update="sudo pacman -Syu"
alias search="sudo pacman -Ss"
alias remove="sudo pacman -Rns"
#alias for system utilities
alias sdn="sudo shutdown now"
alias su="sudo su"
alias cpp="g++"
alias ls="lsd"
 
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
