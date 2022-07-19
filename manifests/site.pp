node default {
}
node 'puppet-master' {
  include role::master_server
}

node /^client/ {
  include role::app_server
}
