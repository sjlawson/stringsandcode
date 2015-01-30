ENV["RAILS_ENV'] ||= 'development'
ENV['GEM_HOME'] = File.expand_path('/meta/s/sjlawson/.rvm/gems/ruby-2.2.0@stringsandcode')

require 'webrick'

root = File.expand_path('/meta/s/sjlawson/html/rails/stringsandcode')

server = WEBrick::HTTPServer.new(:Port => 59700, :DocumentRoot => root)