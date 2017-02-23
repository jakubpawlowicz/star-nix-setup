export EDITOR=vi
export GPG_TTY=$(tty)

if [ -z "$SSH_AUTH_SOCK" ]; then
  ssh-agent -s
fi
