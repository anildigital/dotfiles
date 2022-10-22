# Defined via `source`
function s --wraps='fasd -si' --description 'alias s=fasd -si'
  fasd -si $argv; 
end
