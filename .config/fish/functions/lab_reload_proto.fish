function lab_reload_proto
  mix deps.clean coingaming_flask  && \
  mix deps.clean --build lab_flask && \
  mix deps.unlock coingaming_flask && \
  mix deps.get
end
