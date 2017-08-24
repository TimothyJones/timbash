#!/bin/bash
# Simple bash logging functions
# Timothy Jones, 2017
# https://github.com/TimothyJones/timbash

# Colours
blue='\033[1;34m'
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[93m'
end_colour='\033[0m'

function log() {
    echo -e "${blue}[  ] $* ${end_colour}"
}

function error() {
    echo -e "${red}[❌ ] $* ${end_colour}"
}

function warn() {
    echo -e "${yellow}[🔔 ] $* ${end_colour}"
}

function success_banner() {
    echo -en "${green}"
    banner $*
    echo -en "${end_colour}"
}

function fail_banner() {
    echo -en "${red}"
    banner $*
    echo -en "${end_colour}"
}

function banner() {
    # based on https://unix.stackexchange.com/a/250094
    msg="* $* *"
    edge=`echo  "$msg" | sed 's/./*/g'`
    echo "$edge"
    echo "$msg"
    echo "$edge"
}

