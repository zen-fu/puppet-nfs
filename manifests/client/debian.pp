class nfs::client::debian inherits nfs::base {

  package { ["nfs-common", "rpcbind"]:
    ensure => present,
  }
 
  service { "nfs-common":
    ensure    => running,
    enable    => true,
    hasstatus => true,
    require   => Package["nfs-common"],
  }
 
  service { "rpcbind":
    ensure    => running,
    enable    => true,
    hasstatus => false,
    require   => Package["rpcbind"],
  }

}
