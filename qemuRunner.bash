#!/bin/bash

# initialize QEMU command
Cmd="qemu -m 512 -machine pc,accel=kvm -display curses -vga std -rtc base=localtime"

# option to disable default network interface
NetOpts=" -net none"

# add network options, takes one argument with value 1 or 2
function NetSetup {
  NetOpts="${NetOpts} -net nic,vlan=${1},macaddr=52:54:00:00:0${1}:${USER:5}"
  NetOpts="${NetOpts} -net tap,vlan=${1},ifname=tap${1}${USER:5},script=no,downscript=no"
}

# determine how many network interfaces, takes one argument
function NetNumber {
  case $1 in
    1)   NetOpts="" ; NetSetup 1 ;;
    2)   NetOpts="" ; NetSetup 1 ; NetSetup 2 ;;
    *)   echo bad argument: n=$1 ; exit 1 ;;
  esac
}

# parse script arguments
while [[ $1 ]] ; do
  case ${1:0:2} in
    a=)  Cmd="${Cmd} -hda ${1:2}" ;;
    b=)  Cmd="${Cmd} -hdb ${1:2}" ;;
    c=)  Cmd="${Cmd} -cdrom ${1:2}" ;;
    d=)  Cmd="${Cmd} -hdd ${1:2}" ;;
    n=)  NetNumber ${1:2} ;;
    cd)  Cmd="${Cmd} -boot d" ;;
    *)   echo bad argument: $1 ; exit 1 ;;
  esac
  shift
done

# run finished command
${Cmd}${NetOpts}
