class system_users { 

  user { 'fundamentals':
    ensure => present,
  }

  $a='one'
  $ab='two'
  notice(">$abc<")

  class { '::vmwaretools':
      tools_version => '4.0u3',
  }
}

