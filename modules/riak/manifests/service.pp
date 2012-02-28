class riak::service {
    service { "riak":
        require => Class["riak::package"],
    	ensure => running,
    }
}
