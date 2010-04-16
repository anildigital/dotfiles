#!/usr/bin/env ruby

if ARGV.empty?
  puts "Usage: gemmate <name-of-gem>"
else
  src     = `gem which #{ARGV[0]}`.split.last
  lib_dir = src.slice 0, src.rindex("lib")
  `mate -a '#{lib_dir}'`
end
