source './homebrew.sh'
source './shellwreck.sh'
source './vimwreck.sh'
source './apps/installers.sh'

function install_apps {
  install_or_upgrade_package ack
  install_or_upgrade_package apple-gcc42
  install_or_upgrade_package autoconf
  install_or_upgrade_package automake
  install_or_upgrade_package bash
  install_or_upgrade_package bash-completion
  install_or_upgrade_package colormake
  install_or_upgrade_package coreutils
  install_or_upgrade_package ctags
  install_or_upgrade_package duti
  install_or_upgrade_package fasd
  install_or_upgrade_package git
  install_or_upgrade_package git-extras
  install_or_upgrade_package git-flow
  install_or_upgrade_package gnu-sed
  install_or_upgrade_package gnupg
  install_or_upgrade_package gnutls
  install_or_upgrade_package gpg-agent
  install_or_upgrade_package htop
  install_or_upgrade_package hub
  install_or_upgrade_package jq
  install_or_upgrade_package libksba
  install_or_upgrade_package libtool
  install_or_upgrade_package libxml2
  install_or_upgrade_package libxslt
  install_or_upgrade_package libyaml
  install_or_upgrade_package ngrep
  install_or_upgrade_package openssl
  install_or_upgrade_package patchutils
  install_or_upgrade_package pcre
  install_or_upgrade_package pkg-config
  install_or_upgrade_package proctools
  install_or_upgrade_package python
  install_or_upgrade_package readline
  install_or_upgrade_package reattach-to-user-namespace
  install_or_upgrade_package sqlite
  install_or_upgrade_package the_silver_searcher
  install_or_upgrade_package tmux
  install_or_upgrade_package wget
  install_or_upgrade_package zsh

  install_or_upgrade_app    'dash'
  install_or_upgrade_app    'dropbox'
  install_or_upgrade_app    'evernote'
  install_or_upgrade_app    'firefox'
  install_or_upgrade_app    'firefox-nightly'
  install_or_upgrade_app    'flux-beta'
  install_or_upgrade_app    'gitx-rowanj'
  install_or_upgrade_app    'google-chrome'
  install_or_upgrade_app    'google-hangouts'
  install_or_upgrade_app    'google-chrome-canary'
  install_or_upgrade_app    'gpgtools'
  install_or_upgrade_app    'icefloor'
  install_or_upgrade_app    'iterm2-nightly'
  install_or_upgrade_app    'kaleidoscope'
  install_or_upgrade_app    'little-snitch'
  install_or_upgrade_app    'macvim'
  install_or_upgrade_app    'navicat-premium'
  install_or_upgrade_app    'onepassword-beta'
  # install_pagekite
  install_or_upgrade_app    'screenhero'
  install_or_upgrade_app    'sizeup'
  install_or_upgrade_app    'slack'
  install_or_upgrade_app    'sparrow'
  install_or_upgrade_app    'sublime-text3'
  install_or_upgrade_app    'transmit'
  install_or_upgrade_app    'the-unarchiver'
  install_or_upgrade_app    'undercover'
  install_or_upgrade_app    'vagrant'
  install_or_upgrade_app    'viscosity'
  install_or_upgrade_app    'vlc-nightly'
  install_or_upgrade_app    'vmware-fusion'
  install_mac_app_store_app 'Wunderlist.app'
  install_or_upgrade_app    'xtrafinder'

  install_shellwreck
  install_vimwreck
}
