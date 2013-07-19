require 'jruby-zk/version'
JRubyZk::JAR_VERSIONS.each do |jar, version|
  jar = jar.gsub(/_/, '-')
  require "#{jar}-#{version}"
end

module JRubyZk
end
