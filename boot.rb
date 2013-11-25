require 'rubygems'
require 'bundler/setup'
require_relative 'application'
require_relative 'config' if File.exists?('config.rb')

autoload_path = File.join(File.expand_path('..', __FILE__), 'app', '**', '*.rb')
Dir.glob(autoload_path).each do |file|
  require file
end

Application.execute!
