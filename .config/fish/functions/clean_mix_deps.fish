function clean_mix_deps
  mix deps.clean coingaming_flask lab_flask lab && mix deps.update coingaming_flask && mix deps.get && MIX_ENV=dev mix ecto.drop && MIX_ENV=test mix ecto.drop && MIX_ENV=dev mix ecto.setup && MIX_ENV=dev mix ecto.migrate && MIX_ENV=test mix ecto.setup && MIX_ENV=test  mix ecto.migrate
end
