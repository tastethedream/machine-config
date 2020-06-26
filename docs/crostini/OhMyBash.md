# Zsh/Bash Configuration
 
Configure Zsh/Bash shell with user based themes to make the command line visually appealing.

## Install the fonts on your system

__Note:__ Fonts can be downloaded from here
https://github.com/powerline/fonts.git - follow example below to install them on host (install.sh)

```
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/share/fonts/
sudo fc-cache -vf
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/
```


__Note:__ This configuration can be applied to local terminal setting and also the cloudtop SSH connection.
Configuration 

Update your machine
```
apt -y update && apt -y upgrade
```

Install the powerline fonts
```
sudo apt-get install fonts-powerline
```


Install the powerline fonts
```
sudo apt-get install fonts-powerline
```


## Oh My ZSH

Options: Select one of these 

* Oh My ZSH

* Install oh-my-zsh


```
sudo apt install zsh
```


Check the version installed

```
zsh --version
```


Install Oh My Zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Update the configuration
```
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
source ~/.zshrc
```
Add a theme - e.g. Agnoster

```
git clone https://github.com/agnoster/agnoster-zsh-theme.git ~/.oh-my-zsh/custom/themes/agnoster
```

Edit the zsh configuration file

```
vi ~/.zshrc
```

Make the following amendments in your configuration file - Amend the theme


Set name of the theme to load --- if set to "random", it will load a random theme each time oh-my-zsh is loaded, in which case, to know which specific one was loaded, run: 

```
#echo $RANDOM_THEME
#See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"
Add any plugins that would be useful, for example


# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  debian
  docker
  git
  go
  ruby
  tmux
)
```


## Oh My Bash

Install oh-my-bash
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
```




## Fonts

Open a terminal window. In the terminal window, press CTRL-SHIFT-P to enter the terminal profile settings

Find the appearance settings, then go to the font-family and enter your new font option (list of fonts is available here) e.g.

* "Liberation Mono", monospace


Now select the user-css entry and change the default “https://example.com/some/file” contents to the following:
```
https://cdn.jsdelivr.net/gh/wernight/powerline-web-fonts@ba4426cb0c0b05eb6cb342c7719776a41e1f2114/PowerlineFonts.css
```

Finally …

Open the a terminal window and press CTRL-SHIFT and J (to open a JavaScript window)  

__Note:__ this actually updates the fields available in the profile window - CTRL-SHIFT-P).

Paste the following JavaScript code in to amend the colours used at the command line to something less garish.

```
// Disable bold 
term_.prefs_.set('enable-bold', false) 

// Use this for Royal blue background and light foreground font 
term_.prefs_.set('background-color', "#002B4F");
term_.prefs_.set('foreground-color', "#DDDDDD");

// Solarized Colors
term_.prefs_.set('color-palette-overrides', [
  '#073642', 
  '#dc322f', 
  '#859900', 
  '#b58900', 
  '#268bd2', 
  '#d33682', 
  '#2aa198', 
  '#eee8d5', 
  '#002b36', 
  '#cb4b16', 
  '#586e75', 
  '#657b83', 
  '#839496', 
  '#6c71c4', 
  '#93a1a1', 
  '#fdf6e3'
]);

```


