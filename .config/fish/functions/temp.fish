function temp
  sysctl machdep.xcpm.cpu_thermal_level
  sudo powermetrics
end
