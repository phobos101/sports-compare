require 'rubygems'
require 'bundler'
Bundler.require

use Rack::MethodOverride
require './app'

run SportCompare