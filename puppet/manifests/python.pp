class python {

	package { 
		[ "python", "python-setuptools", "python-dev", "python2.7-dev", "python-pip", 
			"python-software-properties" ]:
		ensure => ["installed"],
			require => Exec["apt-update"]    
		}

		exec {
			"distribute":
			command => "/usr/bin/sudo pip install distribute",
			require => Package["python-pip"],
		}

		exec{
			"yolk":
			command => "/usr/bin/sudo pip install yolk",
			require => Package["python-pip"],
		}

		exec {
			"virtualenv":
			command => "/usr/bin/sudo pip install virtualenv",
			require => Package["python-dev", "python-pip"]
		}

		exec {
			"virtualenvwrapper":
			command => "/usr/bin/sudo pip install virtualenvwrapper",
			require => Package["python-dev", "python-pip"]
		}

		exec {
			"fabric":
			command => "/usr/bin/sudo pip install Fabric",
			require => Package["python-pip"],
		}

	}

