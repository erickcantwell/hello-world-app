# build
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

file { '/var/www/html/index.html':
  ensure  => file,
  content => inline_template("Kubernetes deployment worked!"),
  require => Package['httpd']
}
