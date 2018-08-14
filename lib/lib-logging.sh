#!/bin/bash
# Simple bash logging functions
# Timothy Jones, 2017
# https://github.com/TimothyJones/timbash
if [ -z "${TIMLIB_LOGGING_SH:-}" ]; then
  TIMLIB_LOGGING_SH=yes

  # Colours
  blue='\033[1;34m'
  red='\033[0;31m'
  green='\033[0;32m'
  yellow='\033[93m'
  end_colour='\033[0m'

  TB_SCRIPTNAME=$(basename "$0")

  function log() {
    echo -e "${blue}   log${end_colour}     ($TB_SCRIPTNAME): $* ${end_colour}"
  }

  function error() {
    echo -e "${red}✘  error${end_colour}   ($TB_SCRIPTNAME): $* ${end_colour}"
  }

  function warn() {
    echo -e "${yellow}🔔 warn ${end_colour}   ($TB_SCRIPTNAME): $* ${end_colour}"
  }

  function success() {
    echo -e "${green}✔  success${end_colour} ($TB_SCRIPTNAME): $* ${end_colour}"
  }

  function success_banner() {
      echo -e "${green}$(banner_border "$*")${end_colour}"
      echo -e "${green}$(banner_mid    "$*")${end_colour}"
      echo -e "${green}$(banner_border "$*")${end_colour}"
  }

  function fail_banner() {
      echo -e "${red}$(banner_border "$*")${end_colour}"
      echo -e "${red}$(banner_mid    "$*")${end_colour}"
      echo -e "${red}$(banner_border "$*")${end_colour}"
  }

  function banner_border() {
      banner_mid "$*" | sed 's/./*/g'
  }

  # banner based on https://unix.stackexchange.com/a/250094
  function banner_mid() {
      echo "* $* *"
  }

  function banner() {
      banner_border "$*"
      banner_mid "$*"
      banner_border "$*"
  }
fi
