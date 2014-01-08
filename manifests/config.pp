# == Class: autofs
#
# Full description of class autofs is in the README.
#
class autofs::config (
    $ensure   = $autofs::config_ensure,
    $options  = $autofs::config_options,
    $maps     = $autofs::config_maps,
) {
  include autofs::params

  file { $autofs::params::config_directory:
    ensure => 'directory'
  }

  file { $autofs::params::config_file:
    ensure  => $ensure,
    mode    => '0444',
    content => template('autofs/auto.conf.erb')
  }

  create_resources(autofs::map_file,$maps)

}

