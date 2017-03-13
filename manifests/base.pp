class profile::default {
  include ntp
  class { 'timezone':
    timezone => 'Europe/Zurich',
  }
}
