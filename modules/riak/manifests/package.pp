class riak::package {
    require ::rpm
    require ::wget
	
	exec { "dl_riak":
	    cwd => "/var/tmp",
	    command => "wget http://downloads.basho.com/riak/riak-1.1.0/riak-1.1.0-1.el5.x86_64.rpm",
	    creates => "/var/tmp/riak-1.1.0-1.el5.x86_64.rpm",
	    timeout => 600,
	    path => ["/usr/bin", "/usr/sbin"],
	    before  => Exec["install_riak"],
	}

	exec { "install_riak":
	    cwd => "/var/tmp",
	    command => "rpm -Uvh riak-1.1.0-1.el5.x86_64.rpm",
	    creates => "/usr/sbin/riak",
	    path => ['/usr/local/sbin','/usr/local/bin','/usr/sbin', '/usr/bin', '/sbin', '/bin', '/opt/ruby/bin/'],
	}
}
