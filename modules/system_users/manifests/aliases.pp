class system_users::aliases (
    Variant $admin = 'root',
){
  # uses $admin to build the aliases file
  file { '/etc/aliases': 
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => epp('system_users/aliases.epp', { admin =>$admin }),
  }
  exec { '/usr/bin/newaliases':
    refreshonly => true,
    subscribe => File['/etc/aliases'],
  }
}
