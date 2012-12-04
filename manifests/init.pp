# == Class: nsswitch
#
# Simple configuration of /etc/nsswitch.conf.
#
# Developed for Ubuntu; tested on 12.04.
#
# === Parameters
#
# [*group*]
#   Information sources for groups of users, used by getgrent(3) functions.
#
# [*passwd*]
#   Information sources for user passwords, used by getpwent(3) functions.
#
# [*shadow*]
#   Information sources for shadow user passwords, used by getspnam(3).
#
# === Examples
#
#  include nsswitch
#
# === Authors
#
# Andrew Leonard
#
# === Copyright
#
# Copyright 2012 Andrew Leonard, Seattle Biomedical Research Institute
#
class nsswitch (
  $group  = 'compat',
  $passwd = 'compat',
  $shadow = 'compat'
  ){

  file { '/etc/nsswitch.conf':
    owner   => 'root',
    group   => 'root',
    mode    => '0444',
    content => template('nsswitch/nsswitch.conf.erb'),
  }

}
