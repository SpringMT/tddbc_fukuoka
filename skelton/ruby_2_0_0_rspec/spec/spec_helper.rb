require 'rubygems'
require 'bundler'
Bundler.setup(:default, :test)
Bundler.require(:default, :test)

require 'rspec'

$TESTING=true
$:.unshift File.join(__dir__, '..', 'lib')

require 'foo'

