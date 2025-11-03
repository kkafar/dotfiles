# K. Kafara configuration

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

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="philips" # set by `omz`
# ZSH_THEME="solarized-light"

# Custom commands
bindkey -v

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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

export EDITOR='nvim'

#####################################################
# XDG paths
# https://specifications.freedesktop.org/basedir-spec/latest/
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
#####################################################

#####################################################
# custom paths
export SWM_PATH=$HOME/workspace/swm
export RNS_PATH=${SWM_PATH}/react-native-screens
#####################################################

#####################################################
# custom commands
alias goto:playground="cd $HOME/workspace/playground"
alias goto:scripts="cd $HOME/workspace/scripts"
alias goto:workspace="cd $HOME/workspace"
alias goto:studies="cd $HOME/studies"
alias goto:rnr="cd $SWM_PATH/kkafar@rnr"
alias goto:screens="cd $SWM_PATH/react-native-screens"
alias goto:swm="cd $SWM_PATH"
alias goto:tester="cd $SWM_PATH/rns-tester"
alias up='..'
alias upup='../..'
alias upupup='../../../'
alias upupupup='../../../../'
alias ll='ls -AlF'
alias androidstudio="open -a /Applications/Android\ Studio.app"
# alias rm='rm -v'
alias mv='mv -v'
alias cp='cp -v'
alias find='find -E'
alias grep='grep -E'
alias g='git'
#####################################################

# There is no /usr/local/opt/ folder
# export PATH="/usr/local/opt/openjdk@8/bin:/usr/local/opt/ruby@2.7/bin:$PATH"
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_NDK_HOME=$ANDROID_HOME/ndk/21.0.6113669
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin/
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# AVD / emulator files
# https://developer.android.com/tools/variables
# For some reason AS started using $HOME/.config/.android,
# need to enforce the default here.
export ANDROID_EMULATOR_HOME=$HOME/.android
export ANDROID_AVD_HOME=$ANDROID_EMULATOR_HOME/avd

# Rust
export PATH=$PATH:$HOME/.cargo/bin
#####################################################
# Java 8
# Azul zulu (runs natively)
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home"
#####################################################
# Java 15
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-15.jdk/Contents/Home"

#####################################################
# Java 17
export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home"
#####################################################
# AdoptOpenJDK (runs on Rosetta)
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"
#####################################################


#####################################################
# JAVAFX 17
export JFX_PATH="/Users/kacperkafara/Downloads/javafx/javafx-sdk-17.0.0.1/lib"
#####################################################

#####################################################
# Custom environment variables
export SCRIPTS_DIR="/Users/kacperkafara/workspace/scripts"
#####################################################

#####################################################
# path modification
homebrew_bin=/opt/homebrew/bin
scripts_bin=$SCRIPTS_DIR/bin
export PATH="${homebrew_bin}:$PATH"
export PATH="$homebrew_bin/gmake:$PATH:$scripts_bin"
unset homebrew_bin
unset scripts_bin
#####################################################

source ~/.profile

#####################################################
# git environment variables
source ~/.git/.gitenv
#####################################################

#####################################################
# NVM Setup
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#####################################################

eval "$(direnv hook zsh)"
eval "$(starship init zsh)"

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#####################################################
# sdkman
# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/kacperkafara/.sdkman"
[[ -s "/Users/kacperkafara/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/kacperkafara/.sdkman/bin/sdkman-init.sh"
#####################################################




# bun completions
[ -s "/Users/kkafara/.bun/_bun" ] && source "/Users/kkafara/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
