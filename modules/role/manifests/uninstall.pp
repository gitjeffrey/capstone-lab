group { 'wordpress':
  ensure => absent,
}

user { 'wordpress':
  ensure => absent,
}

#class { 'wordpress':
#  ensure => absent,
#}

#class { 'mysql':
#  ensure => absent,
#}

class { 'php':
  ensure => absent,
}

#class { 'apache':
#  ensure => absent,
#}

#yum remove php
#yum remove httpd

