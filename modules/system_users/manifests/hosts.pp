resources { 'host':
  purge => true,
}
host { 'jeff.puppetlabs.vm':
  ensure       => 'present',
  host_aliases => ['jeff'],
  ip           => '172.16.59.134',
  target       => '/etc/hosts',
}
host { 'localhost':
  ensure       => 'present',
  host_aliases => ['localhost.localdomain'],
  ip           => '::1',
  target       => '/etc/hosts',
}
host { 'master.puppetlabs.vm':
  ensure       => 'present',
  host_aliases => ['master'],
  ip           => '192.168.0.130',
  target       => '/etc/hosts',
}
host { 'testing.puppetlabs.vm':
  ensure => 'present',
  ip     => '127.0.0.1',
  target => '/etc/hosts',
}
host { 'training.puppetlabs.vm':
  ensure       => 'present',
  host_aliases => ['training', 'localhost', 'localhost.localdomain', 'localhost4'],
  ip           => '127.0.0.1',
  target       => '/etc/hosts',
}
