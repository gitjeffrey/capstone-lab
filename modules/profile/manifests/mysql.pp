class profile::mysql {

  include profile::base

  # had to manually create install dir, mysql module complained it was missing...

  file { '/var/lib/mysql':
    ensure => 'directory',
  }

  include '::mysql::server'

  # Turns out the wordpress module creates the db and user.
  # Wordpress module throws errors when it trys to create this db and user and they already exists.
  # So, commented out db creation...

  #mysql::db { 'wordpress_db':
  #  user     => 'wordpress',
  #  password => 'wordpress',
  #  dbname   => 'wordpress_db',
  #  host     => 'localhost',
  #}

}
