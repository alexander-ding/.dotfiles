#!/usr/bin/env bash

printf "\nInstalling programming languages\n"
echo "- rust"
which cargo &>/dev/null
if [[ $? -ne 0 ]]; then
  (curl https://sh.rustup.rs -sSf | sh -s -- -y -q) &>/dev/null
  . "$HOME/.cargo/env"
fi
echo "- python"
if [[ $OSTYPE == 'darwin'* ]]; then
  curl -fsSLo Miniforge3.sh "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-$(uname -m).sh"
else
  wget -q -O Miniforge3.sh "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
fi
bash Miniforge3.sh -b -p "${HOME}/conda" >/dev/null
rm Miniforge3.sh
. "$HOME/conda/etc/profile.d/conda.sh"
conda activate >/dev/null
echo "- go"
# install requirements
if [[ $OSTYPE == 'darwin'* ]]; then
  brew install mercurial --quiet &>/dev/null
else
  sudo apt-get -qq install curl git mercurial make binutils bison gcc build-essential >/dev/null
fi
curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer | bash >/dev/null
. "$HOME/.gvm/scripts/gvm"
if [[ $OSTYPE == 'darwin'* ]]; then
  brew install go --quiet &>/dev/null
else
  gvm install go1.4 -B >/dev/null
  gvm use go1.4 >/dev/null
  export GOROOT_BOOTSTRAP=$GOROOT
  gvm install go1.19 >/dev/null
  gvm use go1.19 --default >/dev/null
fi

echo "- julia"
expect -c 'log_user 0; set timeout 1800; spawn bash -c "curl -fsSL https://install.julialang.org | sh"; expect "Proceed"; send -- "\r"; expect eof' &>/dev/null
export PATH="$PATH:$HOME/.juliaup/bin"
juliaup add release &>/dev/null
juliaup default release &>/dev/null
echo "- node"
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git >/dev/null
asdf install nodejs lts &>/dev/null # first installation clones node-build for some reason
asdf install nodejs lts &>/dev/null
asdf global nodejs lts
echo "- java"
curl -s "https://get.sdkman.io" | bash &>/dev/null
. "$HOME/.sdkman/bin/sdkman-init.sh"
sed -i -e 's/sdkman_auto_answer=false/sdkman_auto_answer=true/g' "$HOME/.sdkman/etc/config"
sdk install java 17.0.5-tem &>/dev/null
sdk default java 17.0.5-tem &>/dev/null
