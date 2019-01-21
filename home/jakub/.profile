alias clipboard-copy='xclip -selection clipboard'
alias clipboard-move='xclip -o clipboard | xclip -selection clipboard'
alias clipboard-paste='xclip -o -selection clipboard'
alias g='git'
alias nx='nix-shell'
alias nxf='nix-shell shell-offline.nix'
alias nxn='nix-shell shell-online.nix'

export EDITOR=vi
export GPG_TTY=$(tty)

if [ -z "$SSH_AUTH_SOCK" ]; then
  eval $(ssh-agent -s) > /dev/null
fi

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

export PS1='\u@\h \[\033[0;36m\]\w \[\033[0;32m\]$(parse_git_branch)\[\033[0m\]$ '

source ~/.profile_passwords

