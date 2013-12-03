# == Class: autofs
#
# Full description of class autofs is in the README.
#
class autofs::service (
  $ensure = $autofs::service_ensure,
  $enable = $autofs::service_enable,
) {
  include autofs::params
  service { $autofs::params::service_name:
    ensure => $ensure,
    enable => $enable,
  }
}
