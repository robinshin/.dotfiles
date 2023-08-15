export ZSH="$HOME/.oh-my-zsh"

eval $(thefuck --alias fuck)

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
export GPG_TTY=$(tty)

source ~/.config/aliases/common.sh
source ~/.config/aliases/kubectl.sh
[ -f ~/.config/aliases/private.sh ] && source ~/.config/aliases/private.sh

## gcloud
# Update PATH for the Google Cloud SDK.
if [ -f "$HOME/.config/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/.config/google-cloud-sdk/path.zsh.inc"; fi
# The next line enables shell command completion for gcloud.
if [ -f "$HOME/.config/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/.config/google-cloud-sdk/completion.zsh.inc"; fi

eval "$(pyenv init -)"
eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

export USE_GKE_GCLOUD_AUTH_PLUGIN=True

# Android Studio
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

export PATH="${PATH}:${HOME}/.krew/bin"

export PATH="/Users/robinshin/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
