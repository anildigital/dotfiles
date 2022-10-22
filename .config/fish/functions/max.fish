function max
  sudo lsof -n | cut -f1 -d' ' | uniq -c | sort | tail
end
