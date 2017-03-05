alias ansible-playbook='ansible-playbook --vault-password-file=~/.ansible_vault_pass'
alias ansible-vault='ansible-vault --vault-password-file=~/.ansible_vault_pass'
alias d=docker
alias dc=docker-compose
alias dm=docker-machine
alias g=git
alias gcm='g co master'

export EDITOR=vi
export GPG_TTY=$(tty)

if [ -z "$SSH_AUTH_SOCK" ]; then
  ssh-agent -s
fi

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

export PS1='\u@\h \[\033[0;36m\]\w \[\033[0;32m\]$(parse_git_branch)\[\033[0m\]$ '

