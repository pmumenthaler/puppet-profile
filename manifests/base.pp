class profile::base {
  
  include fail2ban
  include ssh

  class { '::ntp':
    servers => hiera('ntp::servers')
  }
  class { 'timezone':
    timezone => 'Europe/Zurich',
  }

  service {'puppet':
    ensure => running,
    enable => true;
  }
  $puppetmaster = hiera('puppetmaster')
  file { '/etc/puppetlabs/puppet/puppet.conf':
    ensure  => file,
    content => epp('profile/puppet.conf.epp'),
  } ~> Service['puppet']

}
