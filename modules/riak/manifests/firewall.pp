class riak::firewall {
    iptables { "riak":
        dport   => "8098",
        require => Class["riak::package"],
    }
}
