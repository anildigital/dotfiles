# Defined via `source`
function z --wraps='fasd_cd -d' --description 'alias z=fasd_cd -d'
  fasd_cd -d $argv; 
end
