$user_hash = {
    'zack@localhost' => { ensure    => 'present',
                          max_queries_per_hour => 1200,
                        },
    'monica@localhost' => { ensure    => 'present',
                          max_queries_per_hour => 600,
                        },
    'ralph@localhost' => { ensure    => 'absent',
                          max_queries_per_hour => 600,
                        },
    'brad@localhost' => { ensure    => 'present',
                          max_queries_per_hour => 600,
                        },
    'luke@localhost' => { ensure    => 'present',
                          max_queries_per_hour => 600,
                        },
}

# pass the key and the value to the lambda
$user_hash.each |String $username, Hash $attributes| {
    mysql_user { $username:
      ensure => $attributes['ensure'],
      max_queries_per_hour => $attributes['max_queries_per_hour'],
    }
}

