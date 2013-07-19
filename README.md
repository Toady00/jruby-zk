# JRuby Zk

[![Gem Version](https://badge.fury.io/rb/jruby-zk.png)](http://badge.fury.io/rb/jruby-zk)

_Another ZooKeeper Wrapper_

JRuby Zk requires all the jar files for using ZooKeeper from JRuby.

_Note about version_

The version of this gem will reflect the version of zookeeper bundled with it. So if you are using v3.4.5 of this gem, then you are using v3.4.5 of zookeeper.

## Installation

Add this line to your application's Gemfile:

    gem 'jruby-zk'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jruby-zk

## Usage

````ruby
require 'jruby-zk'
java_import org.apache.zookeeper.ZooKeeper
````

That's it. You now have access to ZooKeeper.

## Simple Example

````ruby
require 'jruby-zk'
java_import org.apache.zookeeper.ZooKeeper

class DummyWatcher
  include org.apache.zookeeper.Watcher
end

watcher = DummyWatcher.new

zk = ZooKeeper.new('192.168.123.20:2181', 10000, watcher)

zk.session_id      #=> 90002156548456448
zk.session_timeout #=> 10000
zk.state.to_s      #=> "CONNECTED"

acl = Java::OrgApacheZookeeper::ZooDefs::Ids::OPEN_ACL_UNSAFE
create_mode = Java::OrgApacheZookeeper::CreateMode::PERSISTENT

zk.create('/zoo_test', nil, acl, create_mode) #=> "/zoo_test"
zk.getChildren('/', false).to_a               #=> ["zoo_test", "zookeeper"]
zk.delete('/zoo_test', -1)                    #=> nil
zk.get_children('/', false).to_a              #=> ["zookeeper"]
````

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
