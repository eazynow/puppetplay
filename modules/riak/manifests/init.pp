class riak {
    include ::riak::package
    include ::riak::firewall
    include ::riak::config
    include ::riak::service
}
