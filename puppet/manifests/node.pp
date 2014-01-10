class nodejs {

	exec {"/usr/bin/add-apt-repository ppa:chris-lea/node.js":
		require => Package["python-software-properties"],
	}

	package { 
		[ "nodejs", "npm" ]:
	ensure => ["installed"],    
	}
}