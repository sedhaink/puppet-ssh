#This is the first file pulled from GitHub to Jenkins.
class ssh::params {
  case $facts['os']['family'] {
    'Debian': {
      $package_name = 'openssh-server'
      $service_name = 'ssh'
    }
    'RedHat': {
      $package_name = 'openssh-server'
      $service_name = 'sshd'
    } 
    default: {
      fail("${facts['operatingsystem']} is not supported!")
    }
  }
}
