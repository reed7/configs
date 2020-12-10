# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/wei.zhong/.oh-my-zsh"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(host dir vcs newline)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs load time)

# HOST color scheme
POWERLEVEL9K_HOST_LOCAL_BACKGROUND=023

# DIR color scheme
POWERLEVEL9K_COLOR_SCHEME=dark
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=110
POWERLEVEL9K_DIR_HOME_BACKGROUND=062
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=067
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=179
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=131
POWERLEVEL9K_VCS_CLEAN_BACKGROUND=028

# LOAD color scheme
# Segment in black and white
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="black"
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="white"
POWERLEVEL9K_LOAD_WARNING_BACKGROUND="black"
POWERLEVEL9K_LOAD_WARNING_FOREGROUND="white"
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="black"
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="white"
# Colorize only the visual identifier
POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias work="cd ~/git/snc/master"

source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
