# Defined via `source`
function sd --wraps='fasd -sid' --description 'alias sd=fasd -sid'
  fasd -sid $argv; 
end
