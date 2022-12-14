exec { 'apt-update':
    command => '/usr/bin/apt update' 
}

package { ['php7.2' ,'php7.2-mysql'] :
    require => Exec['apt-update'],
    ensure => installed,
}

exec { 'run-php7':
    require => Package['php7.2'],
    command => '/usr/bin/php -S 192.168.1.17:8888 -t /vagrant/src &'
}
