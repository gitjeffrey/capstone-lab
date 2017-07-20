class { '::system_users::ordering': }

notify { 'TEST MESSAGE FROM CODER!' :
  before => Class['::system_users::ordering'],
}

notify { 'TEST MESSAGE 2 FROM CODER!!' :
  require => Class['::system_users::ordering'],
}
