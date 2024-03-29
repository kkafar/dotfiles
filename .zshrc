# . Kafara configuration

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=(git vi-mode gh zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

bindkey -v

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
# export LANG=en_US.UTF-8
export EDITOR=nvim

# Custom configuration directory
export CUSTOM_CONFIG_DIR=$HOME/custom-config-files/dir

source ~/.profile

# Load aliases
source ~/custom-config-files/.zsh/aliases.sh

# gpg agent 
############################################################
GPG_TTY=$(tty)
export GPG_TTY
############################################################

# path variable for javafx dependencies
#######################################################
export PATH_TO_FX=$HOME/.jdks/javafx-sdk-15.0.1/lib
export PATH_TO_FX_MODS=$HOME/.jdks/javafx-jmods-15.0.1
#######################################################

# ADDITIONAL VARIABLES
#######################################################
export SCRIPTS_DIR=$HOME/scripts
#######################################################

# JAVA
#######################################################
#export JAVA_HOME=$HOME/.jdks/openjdk-15
#export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export JAVA_HOME=$HOME/.jdks/zulu17.32.13-ca-jdk17.0.2-linux_x64
#######################################################

# EDITOR
#######################################################
export EDITOR="nvim"
export VISUAL="nvim"
#######################################################

# ANDROID SDK
#######################################################
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
#######################################################


# PATH EXTENSION
#######################################################
# export PATH="$PATH:/opt/mssql-tools/bin"
# export PATH="$PATH:/home/kkafara/.java/apache-maven-3.6.3-bin/apache-maven-3.6.3/bin"
export PATH="$PATH:$SCRIPTS_DIR/bin"
export PATH="$PATH:$HOME/bin/idea-intellij/idea-IC-212.5080.55/bin"
export PATH="$PATH:$HOME/bin/pycharm-2021.2.2/bin"
export PATH="$PATH:$HOME/bin/gatling-charts-highcharts-bundle-3.8.4/bin"
export PATH="$PATH:$ANDROID_SDK_ROOT"
export PATH="$PATH:$ANDROID_SDK_ROOT/emulator"
export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools"
#######################################################

# fzf
#######################################################
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh
#######################################################

# Initialization of direnv
#######################################################
eval "$(direnv hook zsh)"
#######################################################
#
# Initialization of starship prompt
#######################################################
eval "$(starship init zsh)"
#######################################################

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#######################################################
export SDKMAN_DIR="/home/kkafara/.sdkman"
[[ -s "/home/kkafara/.sdkman/bin/sdkman-init.sh" ]] && source "/home/kkafara/.sdkman/bin/sdkman-init.sh"
#######################################################
