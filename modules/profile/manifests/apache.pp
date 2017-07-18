class profile::apache {

  include profile::base

  class { 'apache': }

}
