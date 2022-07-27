
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
autoload -U colors && colors
autoload -Uz vcs_info
precmd() { vcs_info }
compinit

# End of lines added by compinstall
zstyle ':vcs_info:git:*' formats '(%b)'

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000

setopt prompt_subst
setopt autocd
setopt extendedglob
setopt notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install

# Startup
pfetch
source /usr/share/nvm/init-nvm.sh

# Colors
(cat ~/.cache/wal/sequences &)
. "${HOME}/.cache/wal/colors.sh"

# Prompt
curdir() {
    echo ${${:-/${(j:/:)${(M)${(s:/:)${(D)PWD:h}}#(|.)[^.]}}/${PWD:t}}//\/~/\~}
}
PROMPT='%# %n@%m [%F{$(echo $color2)}$(curdir)%f] ${vcs_info_msg_0_} %F{$(echo $color2)}>>%f '

extract() {
	if [ -f $1 ]; then
		case $1 in
      *.tar.bz2)    tar xvjf $1    ;;
      *.tar.gz)    tar xvzf $1    ;;
      *.tar.xz)    tar xf $1      ;;
      *.bz2)        bunzip2 $1     ;;
      *.rar)        unrar x $1     ;;
      *.gz)        gunzip $1      ;;
      *.tar)        tar xvf $1     ;;
      *.tbz2)        tar xvjf $1    ;;
      *.tgz)        tar xvzf $1    ;;
      *.zip)        unzip $1       ;;
      *.Z)        uncompress $1  ;;
      *.7z)        7z x $1        ;;
      *)        echo "I can't decompress this '$1'..." ;;
    esac
	else
  	"'$1' not a valid file :/"
  fi

}

# Aliases
alias ip='ip -color=auto'
alias grep='grep --color=auto'
alias ls='ls -l --color=auto'
alias la='ls -la'
alias pip='pipx'
alias history='history 0'
alias v='nvim'
alias vim='nvim'
alias vtop='vtop --theme wal'
alias top='vtop --theme wal'
# Avoid overwrites
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -iv"

# EXPORTS
export PATH="$PATH:/home/$USER/.local/bin";
export EDITOR=nvim;
export TERM=kitty;
