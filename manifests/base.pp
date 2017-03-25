class profile::base {
  class { '::ntp':
    servers => hiera('ntp::servers')
  }
  include fail2ban
  class { 'timezone':
    timezone => 'Europe/Zurich',
  }
  file { '/etc/puppetlabs/puppet/puppet.conf':
    ensure  => file,
    content => epp('profile/puppet.conf.epp'),
  } ~> Service['puppet']

}
