#####################
# Environment check #
#####################
# If not running interactively, don't do anything
[[ $- != *i* ]] && return



#########################
## Powerlevel10k plugin #
#########################
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi



############
## History #
############
## History settings
unsetopt EXTENDED_HISTORY
HISTFILE=~/.bash_history
HISTSIZE=$HISTSIZE
SAVEHIST=$HISTFILESIZE



###############
## Completion #
###############
autoload -Uz compinit && compinit
zmodload zsh/complist

zstyle ':completion:*' completer _extensions _complete _approximate
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$HOME/.cache/zsh/.zcompcache"
zstyle ':completion:*' complete-options true
zstyle ':completion:*' menu select
zstyle ':completion:*' group-name ''

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion::complete:*' gain-privileges 1

zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'

_comp_options+=(globdots)

#autoload -Uz compinit
#zstyle ':completion:*' menu select
#zstyle :compinstall filename "$HOME/.config/zsh/.zshrc"
#zstyle ':completion::complete:*' gain-privileges 1
#compinit -d "$HOME/.cache/zsh/zcompdump-$ZSH_VERSION"
#_comp_options+=(globdots)



################
## Keybindings #
################
# Enable bash like bindings (emacs)
bindkey -e

# Edit line in vim with ctrl-v
autoload edit-command-line; zle -N edit-command-line
bindkey '^v' edit-command-line



############
## Aliases #
############
# Sudo alias -> Allow aliases to be run with sudo
alias sudo='sudo '
alias vim="nvim"



############
## Plugins #
############
# powerlevel10k plugin
source "$HOME/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme"
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# zsh-autosuggestions plugin
source "$HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"

# zsh-syntax-highlighting plugin
# this should be sourced last
source "$HOME/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
