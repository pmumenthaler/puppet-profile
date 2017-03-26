class profile::libvirt {
  package {'libvirt':
    ensure => latest;

  }
  service {'libvirtd':
    ensure => running;
  } 

  package {'libvirt-daemon-kvm':
    ensure => latest;
  }
}
