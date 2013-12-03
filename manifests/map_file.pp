# == Class: autofs
#
# Full description of class autofs is in the README.
#
define autofs::map_file (
    $ensure = 'file',
    $mounts = [],
) {
  # For the ERB
  $options = $mounts

  include autofs::params

  file { $title:
    ensure  => $ensure,
    mode    => '0444',
    content => template('autofs/auto.conf.erb')
  }

}
