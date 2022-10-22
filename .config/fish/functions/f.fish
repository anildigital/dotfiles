# Defined via `source`
function f --wraps='fasd -f' --description 'alias f=fasd -f'
  fasd -f $argv; 
end
