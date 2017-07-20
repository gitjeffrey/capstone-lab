define system_users::managed_user (
  String $passwd,
) {
  file { "/home/${title}":
    ensure => directory,
  }
  
  user { $title:
    ensure   => present,
    password => $passwd,
    home     => "/home/${title}",
  }
  
  file { "/home/${title}/.bashrc":
    ensure   => file,
    mode     => '0644',
    content  => '',
    require => File["/home/${title}"],
    #require  => User["${title}"],
  }
}
