class heroku{

	exec { "heroku-toolbelt":
    command => "/usr/bin/wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh",
    require => Package["wget"],
    }
}