#def time(times = 1)
#  require 'benchmark'
#  ret = nil
#  Benchmark.bm {|x| x.report {times.times {ret = yield }}}
#end
require 'rubygems'
require 'utility_belt'
UtilityBelt.equip(:all)
def log_to(stream=STDOUT)
  ActiveRecord::Base.logger = Logger.new(stream)
  ActiveRecord::Base.clear_active_connections!
end
