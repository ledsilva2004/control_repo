class minecraft {
  file {'/opt/minecraft':
  ensure => directory
  }
  file {'/opt/minecraft/minecraft_server.jar':
    ensure => file'
    source => 'minecraft_server.1.19.jarhttps://launcher.mojang.com/v1/objects/e00c4052dac1d59a1188b2aa9d5a87113aaf1122/server.jar',
  }
  package {'java':
    ensure => present,
    }
    file {'/opt/minecraft/eula.txt':
      ensure => file,
      content => 'eula=true',
  }
  file {'/etc/systemd/system/minecraft.service':
    ensure => file,
    source => 'puppet:///modules/minecraft/minecraft.service',
    }
  }
