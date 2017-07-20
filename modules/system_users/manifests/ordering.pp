class system_users::ordering {

  class { '::mysql::server':
    root_password => 'strongpassword',
  }

  class { '::mysql::bindings':
    php_enable => true,
    perl_enable => true,
  }

  contain ::mysql::server
  contain ::mysql::bindings

}

#notify { 'This should come after the entire MySQL class is enforced':
#  require => Class['::system_users::ordering'],
#}

