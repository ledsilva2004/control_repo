node default {
}
node 'puppet-master' {
  include role::master_server
  file { '/root/README':
  ensure => file,
  content => $fqdn,
  
  }
}

node /^client/ {
  include role::app_server
}
