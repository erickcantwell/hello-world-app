if versioncmp($::puppetversion,'3.6.1') >= 0 {
  $allow_virtual_packages = hiera('allow_virtual_packages',false)

  Package {
    allow_virtual => $allow_virtual_packages,
  }
}

package { 'httpd':
  ensure => latest,
}

package { 'php':
  ensure => latest,
}

file { '/var/www/html/index.php':
  ensure  => present,
  require => Package['httpd']
}
