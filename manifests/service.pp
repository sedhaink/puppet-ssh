class ssh::service (
  String $service_name = $::ssh::service_name,
) {
  service { 'ssh-service':
    ensure     => running,
    name       => $service_name,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
