node default {
}
node 'puppet-master' {
  include role::master_server
}
