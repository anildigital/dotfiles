function run_doc
  find guides | entr sh -c "mix docs"
end
