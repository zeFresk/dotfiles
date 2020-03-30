# Lines configured by zsh-newuser-install
source ~/.bash_profile
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

### Added by Zplugin's installer
source ~/.zinit/bin/zinit.zsh
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zplugin installer's chunk

## Zplugin ##
# Load OMZ Git library
zinit snippet OMZ::lib/git.zsh

# Load Git plugin from OMZ
zinit snippet OMZ::plugins/git/git.plugin.zsh
zinit cdclear -q # <- forget completions provided up to this moment

setopt promptsubst

# Load theme from OMZ
export ALIEN_SECTIONS_LEFT=(time user path newline ssh venv prompt)
export ALIEN_SECTION_TIME_FORMAT=%H:%M
export ALIEN_SECTIONS_RIGHT=(vcs_dirty:async vcs_status:async vcs_branch:async)
export ALIEN_SECTION_PATH_COMPONENTS=4
zinit load eendroroy/alien

# autosuggest #
zinit ice wait atload'_zsh_autosuggest_start'
zinit load zsh-users/zsh-autosuggestions
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=80
ZSH_AUTOSUGGEST_USE_ASYNC=true

zinit ice wait atload'FAST_HIGHLIGHT[chroma-git]="chroma/-ogit.ch"'
zinit load zdharma/fast-syntax-highlighting

# LS_COLORS #
# For GNU ls (the binaries can be gls, gdircolors, e.g. on OS X when installing the
# coreutils package from Homebrew; you can also use https://github.com/ogham/exa)
zinit ice wait atclone"dircolors -b LS_COLORS > c.zsh" atpull'%atclone' pick"c.zsh" nocompile'!'
zinit load trapd00r/LS_COLORS

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
alias ll='ls -l -F -h --color=always -v --author --time-style=long-iso'
alias l='ls  -l -a -F -h --color=always -v --author --time-style=long-iso'

# Needed for colors to work on cmder...
#fcol

# **** LISAAC COMPILER ****
export PATH=$PATH:/home/zefresk/Documents/pkg/lisaac/bin

export PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"
