# == Class: autofs
#
# Full description of class autofs is in the README.
#
class autofs::package (
  $ensure = $autofs::package_ensure
) {
  include autofs::params
  package { $autofs::params::package_name:
    ensure => $ensure,
  }
}
