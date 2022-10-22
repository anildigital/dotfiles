function mix_fix
   mix deps.clean coingaming_flask lab_flask lab && \
   mix deps.get && \
   MIX_ENV=dev mix ecto.migrate && \
   MIX_ENV=test mix ecto.migrate
end
~
