import "dbs.pp"
import "python.pp"
import "heroku.pp"
import "node.pp"

class core {

  exec { "apt-update":
    command => "/usr/bin/sudo apt-get -y update",
    user => "root",
  }
  
  package { 
    [ "vim", "git-core", "build-essential", "curl", "wget" ]:
  	ensure => ["installed"],
    require => Exec["apt-update"]    
  }
}


include core
include heroku

include python
include nodejs

include mysqldb
include postgresdb
include redisdb
include mongodb