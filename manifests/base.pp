class profile::base {

  class { '::ntp':
    servers => hiera('ntp::servers')
  }
  include fail2ban
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
