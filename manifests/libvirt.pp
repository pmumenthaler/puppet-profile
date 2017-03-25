class profile::libvirt {
  package {'libvirt':
    ensure => latest;

  }
  package {'libvirtd':
    ensure => running;
  } 

}
