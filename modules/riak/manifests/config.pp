# Class: riak::conf
#
# The erlang cookie keeps all riak servers able to communicate with each
# other
#
# TODO: etc/riak files need to be added, but with their ip address set
#
class riak::config {
    require ::riak::package

    file {
        "/var/lib/riak/.erlang.cookie":
            source  => "puppet:///modules/riak/var/lib/riak/.erlang.cookie",
            owner => riak,
            mode => 400
    }
}
