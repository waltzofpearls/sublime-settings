#!/bin/bash

#
# http://www.howtogeek.com/196635/an-official-google-drive-for-linux-is-here-sort-of-maybe-this-is-all-well-ever-get/
#
sudo yum install -y golang git mercurial
go get github.com/rakyll/drive/cmd/drive

make $HOME/golang

cat <<'BASH_PROFILE' >> $HOME/.bash_profile

export GOPATH=$HOME/golang
export PATH=$PATH:$GOPATH/bin

BASH_PROFILE

source $HOME/.bash_profile
