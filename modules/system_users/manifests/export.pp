class system_users::export {

  # export host record
  @@host { $::fqdn:
    ip           => $::ipaddress,
    host_aliases => $::hostname,
    tag          => 'classroom',
  }

  # collect all exported resources and realize them on this host
  Host <<| tag == 'classroom' |>>

  # ensure that we have no host entries that aren't explicitly configured
  resources { 'host':
    purge  => true,
  }
}

