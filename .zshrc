# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="fwalch"

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 7

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git bgnotify colored-man-pages)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='vim'
else
	export EDITOR='code'
fi


# Aliases
. ~/.zsh_aliases_base

# Functions
. ~/.zsh_funcs_base
alias config='/usr/bin/git --git-dir=/home/philip/.cfg/ --work-tree=/home/philip'
