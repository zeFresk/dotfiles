# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/zefresk/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

### Added by Zplugin's installer
source '/home/zefresk/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin installer's chunk

## Zplugin ##
# Load OMZ Git library
zplugin snippet OMZ::lib/git.zsh

# Load Git plugin from OMZ
zplugin snippet OMZ::plugins/git/git.plugin.zsh
zplugin cdclear -q # <- forget completions provided up to this moment

setopt promptsubst

# Load theme from OMZ
export ALIEN_SECTIONS_LEFT=(time user path newline ssh venv prompt)
export ALIEN_SECTION_TIME_FORMAT=%H:%M
export ALIEN_SECTIONS_RIGHT=(vcs_dirty:async vcs_status:async vcs_branch:async)
export ALIEN_SECTION_PATH_COMPONENTS=4
zplugin load eendroroy/alien

# autosuggest #
zplugin ice wait atload'_zsh_autosuggest_start'
zplugin load zsh-users/zsh-autosuggestions
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=80
ZSH_AUTOSUGGEST_USE_ASYNC=true

zplugin ice wait atload'FAST_HIGHLIGHT[chroma-git]="chroma/-ogit.ch"'
zplugin load zdharma/fast-syntax-highlighting

# LS_COLORS #
# For GNU ls (the binaries can be gls, gdircolors, e.g. on OS X when installing the
# coreutils package from Homebrew; you can also use https://github.com/ogham/exa)
zplugin ice wait atclone"dircolors -b LS_COLORS > c.zsh" atpull'%atclone' pick"c.zsh" nocompile'!'
zplugin load trapd00r/LS_COLORS

### Aliases ###
alias hs='history | grep'
alias myip='curl http://ipecho.net/plain; echo'
alias vim='nvim'
alias svim='sudo nvim'
alias update='sudo apt-get update && sudo apt-get upgrade -y'

export COLUMNS  # Remember columns for subprocesses.
function ls {
  command ls -F -h --color=always -v --author --time-style=long-iso -C "$@" | less -R -X -F
}
alias ll='ls -l'
alias l='ls -l -a'
alias fcolor='for i in {1..16384}; do echo -en "\e[38;5;${i}mTest";done'
alias fcol='for j in {1..5}; do fcolor;done'

# Needed for colors to work on cmder...
#fcol
