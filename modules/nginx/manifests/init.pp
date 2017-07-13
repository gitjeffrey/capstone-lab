class nginx {

  case $facts['os']['family'] {
    'redhat': {
        $conf_root = '/etc/nginx'
        $pkg_name = 'nginx'
        $doc_root = '/var/www'
    }
    'windows': {
      $conf_root = "C:\\Program Data\\nginx"
      $pkg_name = 'nginx'
      $doc_root = "${conf_root}\\html"
    }
  }

  package { $pkg_name: 
    ensure => present, 
    name => $pkg_name,
  }

  file { $doc_root:
    ensure => directory,
  }

  file { "${doc_root}/index.html":
    ensure => present,
    source => 'puppet:///modules/nginx/index.html',
  }

  file { "${conf_root}/nginx.conf" :
    ensure  => present,
    source => 'puppet:///modules/nginx/nginx.conf',
  }

  service { 'nginx':
    ensure    => running,
    enable    => true,
    subscribe => File["${conf_root}/nginx.conf"],
  }

}
