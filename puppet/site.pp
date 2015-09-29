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
