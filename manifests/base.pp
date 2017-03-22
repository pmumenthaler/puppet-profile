class profile::base {
  class { '::ntp':
    servers => hiera('ntp::servers')
  }
  include fail2ban
  class { 'timezone':
    timezone => 'Europe/Zurich',
  }
}
