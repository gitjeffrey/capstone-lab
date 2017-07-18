class profile::wordpress {

  include profile::base

  group { 'wordpress':
    ensure => present,
  }

  user { 'wordpress':
    ensure => present,
  }

  # class { 'wordpress': }

  class { 'wordpress':
    wp_owner    => 'wordpress',
    wp_group    => 'wordpress',
    db_name     => 'wordpress_db',
    db_user     => 'wordpress',
    db_password => 'wordpress',
    install_dir => '/opt/wordpress',
    install_url => 'https://wordpress.org/wordpress-3.8.tar.gz',
  }

  # add firewalld configuration

  # test using the url...
  # http://localhost/wp-admin

}
