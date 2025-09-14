# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="bira"

export BAT_THEME=gruvbox-dark

# ALIASES

# :-)
alias vim=nvim

#Pacman
alias install="sudo pacman -S"
alias update="sudo pacman -Syu && paru"

#Obsidian Notes
alias notes="cd /home/geoff/BRAIN && vim ."
alias vnotes="glow /home/geoff/BRAIN"

#Best plugin there ever was
alias tms="tmux-sessionizer"

alias please="sudo !!"

#Config Shortcuts
alias vim_config="cd /home/geoff/.config && vim ./nvim"



# Setup fzf
# ---------
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
fi

if [[ ! -f ~/.zpm/zpm.zsh ]]; then
  git clone --recursive https://github.com/zpm-zsh/zpm ~/.zpm
fi
source ~/.zpm/zpm.zsh


plugins=(git web-search zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="$PATH:/home/geoff/.local/bin/scripts"
export PATH="$HOME/opt/cross/bin:$PATH"
export EDITOR='nvim'

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#666666"
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi


zstyle :notes home  ''


# Compilation flags
# export ARCHFLAGS="-arch x86_64"
export DOTNET_ROOT="$HOME/.dotnet"
export PATH="${PATH:+${PATH}:}$DOTNET_ROOT:$DOTNET_ROOT/tools"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:/home/geoff/.spicetify
