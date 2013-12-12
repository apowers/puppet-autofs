# == Class: autofs
#
# Full description of class autofs is in the README.
#
class autofs (
  $config_ensure  = 'present',
  $config_options = hash([]),
  $config_maps    = hash([]),
  $package_ensure = 'installed',
  $service_ensure = 'running',
  $service_enable = true,
) {
  anchor {'::autofs::begin': } ->
  class  {'::autofs::package': } ->
  class  {'::autofs::config': } ~>
  class  {'::autofs::service': } ~>
  anchor {'::autofs::end': }
}
