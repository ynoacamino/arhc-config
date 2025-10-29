source ~/powerlevel10k/powerlevel10k.zsh-theme

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

alias ss='ssh ubuntu@dev.ynoacamino.me'
alias edit='micro ~/.zshrc'
alias reload='source ~/.zshrc'
alias ls='lsd'
alias k='sudo kubectl'
alias h='sudo helm'

alias docker-down='sudo systemctl stop docker.socket && sudo systemctl stop docker'
alias docker-start='sudo systemctl start docker'
alias docker-status='systemctl status docker'

alias mc='sudo java -jar /opt/tlauncher/TLauncher.jar'

export ANDROID_HOME=$HOME/Android/Sdk

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/$HOME/go/bin
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$HOME/.local/share/coursier/bin

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=$HOME/.local/bin:$PATH


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/home/ynoacamino/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/home/ynoacamino/.bun/_bun" ] && source "/home/ynoacamino/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform
