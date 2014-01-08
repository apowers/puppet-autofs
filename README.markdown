# autofs

This is the autofs module.

# Requirements

* Puppetlabs/stdlib

# Installation

  puppet module install seattle-biomed/autofs

# Synopsis

  Install and manage autofs service.
  Loads configuration '/etc/auto.master.d/*.autofs' by default.

# Parameters

- *config_ensure*  (Default: 'present')
- *config_options* (Default: Empty)
- *config_maps*    (Default: Empty)
- *package_ensure* (Default: 'true')
- *service_ensure* (Default: 'running')
- *service_enable* (Default: 'true')

# Examples

Basic Installation

  include '::autofs'

Parameterized Installation

  class { '::autofs':
    config_ensure  => 'present',
    config_options => ['+dir:/etc/auto.master.d'],
    package_ensure => 'true',
    service_ensure => 'running',
    service_enable => 'true',
  }

  ::autofs::map_file { '/etc/auto.master.d/home.autofs':
    mounts => ['*  rw  server:/home/&']
  }

Installation with Hiera

  ---
  class:  - autofs
  autofs::config::ensure:  'present'
  autofs::config::maps:
    '/etc/auto.master.d/home.autofs':
      mounts:
        - '*  rw  server:/home/&'
  autofs::package::ensure:  'true'
  autofs::service::ensure:  'running'
  autofs::service::enable:  'true'

# License

  See LICENSE

# Contact


# Support

Please log tickets and issues at our [Projects site](https://github.com/seattle-biomed/autofs)
