class nginx {

  package { 'nginx':
    ensure => present, 
    name => 'nginx',
  }

  file { '/var/www':
    ensure => directory,
  }

  file { '/var/www/index.html':
    ensure => present,
    source => 'puppet:///modules/nginx/index.html',
  }

  file { '/etc/nginx/nginx.conf':
    ensure => present,
  }

  service { 'nginx':
    ensure    => running,
    enable    => true,
    subscribe => File['/etc/nginx/nginx.conf'],
  }

}
