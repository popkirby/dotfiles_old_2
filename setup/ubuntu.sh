source ../etc/lib/util.sh

# check curl
if ! is_exists "curl"; then
  echo "Please install curl"
  echo "run: sudo apt-get install curl"
  exit
fi

# linuxbrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
export PATH="$HOME/.linuxbrew/bin:$PATH"

# tools
brew install gcc git zsh tmux
brew install vim --with-lua --with-luajit --override-system-vi --HEAD

