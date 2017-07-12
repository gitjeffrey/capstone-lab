class system_users::admins {

group { 'staff':
  ensure => present,
}

user { 'admin_mgr':
  ensure => present,
  groups =>  'staff',
  shell  =>  '/bin/csh',
}
}

