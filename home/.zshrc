# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir virtualenv nvm background_jobs vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history)

POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=8
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(archlinux fasd colored-man-pages colorize python systemd git tmux)

# User configuration

export PATH="/home/bojan/code/tools/pycharm/bin:/home/bojan/code/tools/WebStorm/bin:/home/bojan/.nvm/versions/node/v4.3.1/bin:/usr/local/texlive/2015/bin/x86_64-linux:/home/bojan/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/usr/lib/go/bin:/home/bojan/Code/workspaces/go/bin"
# export MANPATH="/usr/local/man:$MANPATH"

DEFAULT_USER=bojan
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

source $ZSH/oh-my-zsh.sh

eval "$(fasd --init zsh-wcomp-install)"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

#Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='mvim'
fi

export BROWSER='chromium'
export XDG_CONFIG_HOME=$HOME/.config

for f in ~/.zsh/libs/*; do
    source $f
done

assh () {
    if ping -c 1 192.168.1.4 &> /dev/null
    then
        TERM=screen-256color autossh -M 0 192.168.1.4 -t "tmux -u2 a -t '$@'"
    else
        TERM=screen-256color autossh -M 0 aura -t "tmux -u2 a -t '$@'"
    fi
}

rssh () {
    TERM=screen-256color autossh -M 0 -A -X rash -t "tmux -u2 a -t '$@'"
}

if [[ $1 == eval ]]
then
    "$@"
    set --
fi

eval $(keychain --eval --agents ssh --quiet id_rsa linode_rsa varg_rsa repo )

alias vim=nvim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
