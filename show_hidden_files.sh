#!/bin/bash

setFinderParam(){
  SETTING=${SETTING}
  defaults write com.apple.finder AppleShowAllFiles ${SETTING}
  killall Finder
}

case $1 in
  show)
    SETTING=TRUE
    setFinderParam
  ;;
  hide)
    SETTING=FALSE
    setFinderParam
  ;;
  *)
    echo "$(basename $0) [show|hide]"
    echo 'show : show hidden files in mac Finder (helps with time machine)'
    echo 'hide: hide hidden files in mac Finder (default)'
  ;;
esac
