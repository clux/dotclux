# dotclux
Use this if you are clux and you are reinstalling linux.

## Usage
Follow this, in order listed:

```bash
sudo apt-get install -y -qq git curl g++
mkdir repos && cd repos && git clone https://github.com/clux/dotclux.git df && cd df

sudo ./linux
# need to wait for node - so setup a few things outside installation:
# - startup apps: guake, redshift, pidgin, remove caribou
# - keyboard layout: add "us int dead", alt-shift change, caps compose
# - guake configure
# - editor script (and related tasks below)
# - look and feel of UI
# - install nvm and nvm install 0.10 and iojs
./shell
# continue in guake (applies new bashrc)
./git
./cpy
# login to chrome and dvcs services and paste ssh keys
./repos

# if at work - clone work gist and follow that
```

## Script Description
### linux
apt basics

### llvm
The entire llvm toolchain; llvm, clang, clang extras, compiler-rt. Prepares for a global install, and leaves a pre-compiled version in ~/Downloads for version switching.

### shell
Prepares shell shortcuts, PATH extensions and npm auto-completion.

### git
Initializes the git config and sets up ssh keys to paste to github.

### editor
Fetches the latest `amd64.deb` sublime text 3 build and `dpkg` installs it.

Afterwards:

- setup sublime text license
- setup sublime package control

Then install the following packages:

- SublimeLinter
- SublimeLinter-jshint
- SublimeLinter-json
- SublimeLinter-cppcheck
- SublimeLinter-contrib-clang?
- Seti_UI

### cpy
Installs settings for:

- sublime_text3
- jshint
- redshift

### repos
Does a bunch of stuff with my git and npm modules:

- Installs global npm modules
- Clones all personal modules
- npm link all my personal modules so they are available globally (in correct order)
