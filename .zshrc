# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/noah/.oh-my-zsh"

# Set name of the theme to load (https://github.com/robbyrussell/oh-my-zsh/wiki/Themes)
ZSH_THEME="spaceship"

# Disable marking untracked files as dirty (in git)
DISABLE_UNTRACKED_FILES_DIRTY="true"

# History time stamp
HIST_STAMPS="yyyy-mm-dd"

ZSH_CUSTOM=$HOME/.oh-my-zsh/custom

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git)

# Spaceship settings (https://github.com/denysdovhan/spaceship-prompt/blob/master/docs/Options.md)
SPACESHIP_PROMPT_ORDER=(
    user          # Username section
    dir           # Current directory section
    host          # Hostname section
    git           # Git section (git_branch + git_status)
    jobs          # Background jobs indicator
    exit_code     # Exit code section
    char          # Prompt character
    node
    docker
)

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_TIME_SHOW=true
SPACESHIP_DOCKER_SHOW=true
SPACESHIP_NODE_SHOW=true
SPACESHIP_USER_SHOW=true
SPACESHIP_DIR_SHOW=true

source $ZSH/oh-my-zsh.sh
source $HOME/.zsh_exports
source $HOME/.zsh_aliases
