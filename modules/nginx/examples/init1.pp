class { '::nginx':
  paramdocroot  => '/var/www2',
  paramhighperf => true,
}

#class { '::nginx': }
#include ::nginx

