node default {
}
node 'puppet-master' {
  include role::master_server
  file { '/root/README':
  ensure => file,
  content => "Welcome to ${fqdn}\n",
  
  }
}

node /^client/ {
  include role::app_server
}
