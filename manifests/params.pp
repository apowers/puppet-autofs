# == Class: autofs
#
# Full description of class autofs is in the README.
#
class autofs::params {
  $package_name = 'autofs'
  $config_file  = '/etc/auto.master'
  $service_name = $::osfamily ? {
    'Debian' => 'autofs',
    'RedHat' => 'autofs',
    default  => fail('unsupported platform')
  }
}
