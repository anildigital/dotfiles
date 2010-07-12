require 'rubygems'

def time(times = 1)
  require 'benchmark'
  ret = nil
  Benchmark.bm {|x| x.report {times.times {ret = yield }}}
end

if RUBY_VERSION < '1.9' and (defined?(RUBY_ENGINE) and RUBY_ENGINE != 'rbx')
  require 'utility_belt'
  require 'wirble'
  Wirble.init
  Wirble.colorize

  UtilityBelt.equip(:all)
end

def log_to(stream=STDOUT)
  ActiveRecord::Base.logger = Logger.new(stream)
  ActiveRecord::Base.clear_active_connections!
end


# Easily print methods local to an object's class
class Object
  def local_methods
    (methods - Object.instance_methods).sort
  end
end


# q as exit
alias q exit
