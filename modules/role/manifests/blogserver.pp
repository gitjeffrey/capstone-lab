# == Class: role::blogserver
#
# Role for a blogging server.
#

class role::blogserver {

  include ::profile::apache
  include ::profile::php
  include ::profile::mysql
  include ::profile::wordpress

  Class['::profile::apache']
    -> Class['::profile::php']
    -> Class['::profile::mysql']
    -> Class['::profile::wordpress']

}
