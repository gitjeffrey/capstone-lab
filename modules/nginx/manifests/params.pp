class nginx::params {
  case $facts['os']['family'] {
    'RedHat': {
      $docroot  = '/var/www3'
      $highperf = true
      $pkgname  = 'nginx'
      $confroot = '/etc/nginx'
    }
    'windows': {
      $docroot  = 'C:/Program Files/nginx/html'
      $highperf = false
      $pkgname  = 'nginx'
      $confroot = 'C:\\Program Data'
    }
    default: {
      fail("ERROR DUDE!!!  Problem supporting ${facts['os']['family']} :o(")
    }
  }
}
