class profile::php {

  include profile::base

  #include '::php'

  package { 'php-mysql.x86_64': 
    ensure => present,
  }

}
