class profile::base {
  include ntp
  class { 'timezone':
    timezone => 'Europe/Zurich',
  }
}
