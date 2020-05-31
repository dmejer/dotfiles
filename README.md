# my dotfiles

* yadm (to handle this repo)
* oh-my-zsh
* zsh (with plugins)
* guake (new version with split screan, awesome)
* uxrvt (I was using on i3, maybe it's time to say goodbye?)

# prerequisites
## package manager
```
sudo apt update
sudo apt install fzf jq copyq python3 python3-tk
sudo apt install fonts-font-awesome
sudo apt install neovim
sudo apt install -y bspwm xdo sxhkd xcompmgr 
```

## polybar - compilation
```
sudo apt-get install \
  cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev \
  libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev \
  libxcb-util0-dev libxcb-xkb-dev pkg-config python3-xcbgen \
  xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libmpdclient-dev \
  libiw-dev libcurl4-openssl-dev libpulse-dev \
  libxcb-composite0-dev xcb libxcb-ewmh2
git clone https://github.com/jaagr/polybar.git
cd polybar
./build.sh
```

## zsh - install manually
* https://ohmyz.sh/#install
* https://github.com/romkatv/powerlevel10k
* https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md

# TODO:
* transfer to pure-zsh? (https://www.reddit.com/r/zsh/comments/d40hb9/howto_speeding_up_zsh_and_ohmyzsh) :D

