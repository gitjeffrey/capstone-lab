class nginx (
  String $paramdocroot   = ::nginx::params::docroot,
  Boolean $paramhighperf = ::nginx::params::highperf,
) inherits nginx::params {

  $osfamily = 'Jeff'
  notify { "${::osfamily}, ${osfamily}": }

  notice ("pkgname = ${pkgname}")

  package { $pkgname:
    ensure => present,
    name => $pkgname,
  }

  file { $paramdocroot:
    ensure => directory,
  }

  file { "${paramdocroot}/index.html":
    ensure  => file,
    source => 'puppet:///modules/nginx/index.html',
  }

  file { "${confroot}/nginx.conf" :
    ensure  => present,
    content => epp('nginx/nginx.conf.epp', {
                 tempparamdocroot => $paramdocroot,
                 tempparamhighperf => $paramhighperf }
               )
    # source => 'puppet:///modules/nginx/nginx.conf',
  }

  service { 'nginx':
    ensure    => running,
    enable    => true,
    subscribe => File["${confroot}/nginx.conf"],
  }

}
