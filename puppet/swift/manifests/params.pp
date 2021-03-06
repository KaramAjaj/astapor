class swift::params {
  case $osfamily {
    'Debian': {
      $package_name                      = 'swift'
      $client_package                    = 'python-swiftclient'
      $proxy_package_name                = 'swift-proxy'
      $proxy_service_name                = 'swift-proxy'
      $object_package_name               = 'swift-object'
      $object_service_name               = 'swift-object'
      $object_replicator_service_name    = 'swift-object-replicator'
      $container_package_name            = 'swift-container'
      $container_service_name            = 'swift-container'
      $container_replicator_service_name = 'swift-container-replicator'
      $account_package_name              = 'swift-account'
      $account_service_name              = 'swift-account'
      $account_replicator_service_name   = 'swift-account-replicator'
      $swift3                            = 'swift-plugin-s3'
      if $::operatingsystem == 'Debian' {
        $service_proivider    = 'debian'
      } else {
        $service_provider     = 'upstart'
      }
    }
    'RedHat': {
      $package_name                      = 'openstack-swift'
      $client_package                    = 'python-swiftclient'
      $proxy_package_name                = 'openstack-swift-proxy'
      $proxy_service_name                = 'openstack-swift-proxy'
      $object_package_name               = 'openstack-swift-object'
      $object_service_name               = 'openstack-swift-object'
      $object_auditor_service_name       = 'openstack-swift-object-auditor'
      $object_expirer_service_name       = 'openstack-swift-object-expirer'
      $object_replicator_service_name    = 'openstack-swift-object-replicator'
      $object_updater_service_name       = 'openstack-swift-object-updater'
      $container_package_name            = 'openstack-swift-container'
      $container_service_name            = 'openstack-swift-container'
      $container_auditor_service_name    = 'openstack-swift-container-auditor'
      $container_replicator_service_name = 'openstack-swift-container-replicator'
      $container_updater_service_name    = 'openstack-swift-container-updater'
      $account_package_name              = 'openstack-swift-account'
      $account_service_name              = 'openstack-swift-account'
      $account_auditor_service_name      = 'openstack-swift-account-auditor'
      $account_reaper_service_name       = 'openstack-swift-account-reaper'
      $account_replicator_service_name   = 'openstack-swift-account-replicator'
      $service_provider                  = undef
    }
    default: {
        fail("Unsupported osfamily: ${osfamily} for os ${operatingsystem}")
    }
  }
}
