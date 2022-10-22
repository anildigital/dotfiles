# Defined via `source`
function zz --wraps='fasd_cd -d -i' --description 'alias zz=fasd_cd -d -i'
  fasd_cd -d -i $argv; 
end
