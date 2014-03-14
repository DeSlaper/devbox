class phpmyadmin {

	exec { 'make_ln':
		command => '/bin/ln -s /var/www/phpmyadmin /usr/share/phpmyadmin'
	}
	
	package { 'phpmyadmin':
        ensure => installed,
        require => Exec['make_ln']
    }
}