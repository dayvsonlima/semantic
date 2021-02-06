require 'sinatra'
require "sinatra/namespace"

files = Dir["./api/**/*.rb"]

files.each do |file|
  name = file
          .sub('./api', '')
          .sub('.rb', '')
          .delete_suffix('/')
          .delete_prefix('/')

  router_block = Proc.new do
    eval(File.read( file ), binding)
  end

  send(:namespace, %r{\/#{name}(\/|\b)}, &router_block)
end
