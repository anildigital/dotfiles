function ports
  sudo lsof -iTCP -sTCP:LISTEN -P $argv;
end
