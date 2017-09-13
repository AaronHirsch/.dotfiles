### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

LOCAL=/usr/local
OPT=$LOCAL/opt

alias nvim='env ASDF_NODEJS_VERSION=14.15.0 NODE_PATH=`npm root -g` nvim'
alias vim='nvim'
alias vi='nvim'
alias ls='ls -GF'

if [ "$TMUX" ]; then
    export TERM=tmux-256color
else
    export TERM=xterm-256color
fi

export LANG=en_US.UTF-8
export CASE_SENSITIVE="true"
export CDIFF_OPTIONS='-s -w0'
export HH_CONFIG=keywords,hicolor,debug
export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig
export EDITOR='nvim'
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export FZ_CMD=","

export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob \"!.git/*\""
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
 --color=fg:#cbccc6,bg:#222732,hl:#707a8c
 --color=fg+:#ffffff,bg+:#4AAFF8,hl+:#ffcc66
 --color=info:#73d0ff,prompt:#707a8c,pointer:#cbccc6
 --color=marker:#73d0ff,spinner:#73d0ff,header:#d4bfff'

export FPATH=$LOCAL/share/zsh/site-functions:$FPATH

export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.gem/ruby/2.6.0/bin:$PATH
export PATH=$PATH:${GOPATH}/bin:${GOROOT}/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin

export GOBIN=${HOME}/.go/bin
export GOPATH=${HOME}/.goexport GOROOT=/usr/local/opt/go/libexec

export RUBYOPT=-W0

export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

load=light

autoload -Uz bashcompinit && autoload -Uz compinit
bashcompinit && compinit

zinit ice blockf; zinit $load zsh-users/zsh-completions

zinit $load willghatch/zsh-saneopt
zinit $load mafredri/zsh-async

zinit pack for fzf

zinit ice silent atload"zstyle ':completion:*' special-dirs true"
zinit light Aloxaf/fzf-tab

zinit ice silent wait:1 atload:_zsh_autosuggest_start
zinit $load zsh-users/zsh-autosuggestions

zinit ice silent wait:1
zinit snippet OMZP::git

zinit ice silent wait:1
zinit snippet OMZP::kubectl

zinit ice silent wait:1
zinit snippet OMZP::tmux

zinit ice silent wait:1
zinit snippet OMZP::vi-mode

zinit ice silent wait:1
zinit $load laggardkernel/zsh-thefuck

zinit ice silent wait:1
zinit $load zdharma/fast-syntax-highlighting

zinit ice silent wait:1
zinit $load changyuheng/fz

zinit ice silent wait:1
zinit $load rupa/z

zinit ice depth=1
zinit $load romkatv/powerlevel10k

alias -g ..='cd ..'
alias -g ...='cd ../..'
alias -g ....='cd ../../..'
alias -g .....='cd ../../../..'
alias -g ......='cd ../../../../..'
alias -- -='cd -'

[[ ! -f $HOME/.p10k.zsh ]] || . $HOME/.p10k.zsh
[[ ! -f $OPT/asdf/asdf.sh ]] || . $OPT/asdf/asdf.sh
[[ ! -f $HOME/asdf/plugins/java/set-java-home.zsh ]] || . $HOME/asdf/plugins/java/set-java-home.zsh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/aws-okta aws-okta

setopt SHARE_HISTORY
setopt glob_dots
