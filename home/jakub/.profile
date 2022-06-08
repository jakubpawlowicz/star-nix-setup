alias chrome='rm .config/chromium/Default/Prefer*; chromium --enable-features=UseOzonePlatform --ozone-platform=wayland'
alias g='git'
alias nx='nix-shell'
alias signal='GDK_BACKEND=wayland nohup signal-desktop --enable-features=UseOzonePlatform --ozone-platform=wayland &'

export EDITOR=vi
export GPG_TTY=$(tty)

if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent`
  ln -fs "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
ssh-add -l > /dev/null || ssh-add

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

export PS1='\u@\h \[\033[0;36m\]\w \[\033[0;32m\]$(parse_git_branch)\[\033[0m\]$ '

source ~/.profile_passwords

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec sway
fi

