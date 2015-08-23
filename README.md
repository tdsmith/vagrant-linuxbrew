Vagrant configuration for testing [Linuxbrew](https://github.com/Homebrew/linuxbrew).

To use:
* `brew install vagrant Caskroom/cask/virtualbox`
* `git clone https://github.com/tdsmith/vagrant-linuxbrew-ubuntu.git`
* `cd vagrant-linuxbrew-ubuntu`
* `vagrant up --provider virtualbox`
* `vagrant ssh brew tests` (this actually fails right now but it does run!)
