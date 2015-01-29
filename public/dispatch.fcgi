ENV["RAILS_ENV'] ||= 'production'
ENV['GEM_HOME'] = File.expand_path('/meta/s/sjlawson/.rvm/gems/ruby-2.2.0@stringsandcode')

require 'fcgi'
require File.join(File.dirname(__FILE__), '../config/environment.rb')