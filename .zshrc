export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
export GPG_TTY=$(tty)

source $HOME/.config/aliases/common.sh

## gcloud
# Update PATH for the Google Cloud SDK.
if [ -f "$HOME/.config/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/.config/google-cloud-sdk/path.zsh.inc"; fi
# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/.config/google-cloud-sdk/path.zsh.inc" ]; then . '/Users/robinshin/.config/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f "$HOME/.config/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/.config/google-cloud-sdk/completion.zsh.inc"; fi

eval "$(pyenv init -)"
eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

export USE_GKE_GCLOUD_AUTH_PLUGIN=True

# Android Studio
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH="${PATH}:${HOME}/.krew/bin"

export PATH="$HOME/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
