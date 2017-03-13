class profile::base {
  include ntp
  include fail2ban
  class { 'timezone':
    timezone => 'Europe/Zurich',
  }
}
