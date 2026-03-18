export PATH="/usr/local/bin:$PATH"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export JAVA_HOME=/opt/homebrew/opt/openjdk@21

# Path to your oh-my-zsh installation.
export ZSH="/Users/wei.zhong/.oh-my-zsh"

export PATH="/Users/wei.zhong/.local/bin:$PATH"

#export NEXUS_USERNAME=REDACTED
#export NEXUS_PASSWORD=REDACTED

export NEXUS_USERNAME=wei.zhong
export NEXUS_PASSWORD=REDACTED

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="muse"

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
export PATH="/usr/local/bin:$PATH"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export JAVA_HOME=/opt/homebrew/opt/openjdk@21

# Path to your oh-my-zsh installation.
export ZSH="/Users/wei.zhong/.oh-my-zsh"

export PATH="/Users/wei.zhong/.local/bin:$PATH"

#export NEXUS_USERNAME=REDACTED
#export NEXUS_PASSWORD=REDACTED

export NEXUS_USERNAME=wei.zhong
export NEXUS_PASSWORD=REDACTED

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="muse"

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
"~/.zshrc" 115L, 4064B
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias work="cd ~/Projects"
alias nproc="sysctl -n hw.ncpu"

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

eval "$(rbenv init -)"

alias Go='bssh -c "pbrun -uroot -- bash --rcfile /home/users/wei.zhong/.bashrc"'

function _pushSetup() {
    if [ -z "$1" ]; then
      >&2 echo "USAGE: pushSetup <bssh-host>"
      return
    fi

    cd /Users/wei.zhong/Projects/ais-scripts
    git pull --quiet origin master

    bscp /Users/wei.zhong/Projects/ais-scripts/troubleshooting/env $1:env
    bssh -c "grep -q '<user>' .bashrc || echo 'source /home/users/<user>/env' >> /home/users/<user>/.bashrc" $1
}

# source /usr/local/Homebrew/Library/Taps/now/homebrew-devtools/etc/zshrc

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/wei.zhong/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# Added by Windsurf
export PATH="/Users/wei.zhong/.codeium/windsurf/bin:$PATH"
export PATH="/private/var/projects/snc-provision/snc-provision-docker/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/wei.zhong/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

export PATH="/Users/wei.zhong/Projects/snc-provision/snc-provision-docker/bin:$PATH"
