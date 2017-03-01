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
