function tabs_to_spaces_el 
  find . -name '*.el' ! -type d -exec bash -c 'expand -t 4 "$0" > /tmp/e && mv /tmp/e "$0"' {} \;
end
