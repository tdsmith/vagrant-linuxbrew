Vagrant configuration for testing [Linuxbrew](https://github.com/Homebrew/linuxbrew).

To use:
* `brew install vagrant Caskroom/cask/virtualbox`
* `git clone https://github.com/tdsmith/vagrant-linuxbrew.git`
* `cd vagrant-linuxbrew`
* `vagrant up --provider virtualbox (centos6|ubuntu)`
* `vagrant ssh (centos6|ubuntu) -- brew tests` (this actually fails right now but it does run!)
