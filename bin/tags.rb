#!/usr/bin/ruby
require 'rubygems'
require 'rake'

module CTags
  RUBY_FILES = Rake::FileList['**/*.rb'].exclude("pkg")
end

if __FILE__ == $0 
  puts "Making Emacs TAGS file" 
  sh "etags  #{CTags::RUBY_FILES}"
end
