# Defined via `source`
function sf --wraps='fasd -sif' --description 'alias sf=fasd -sif'
  fasd -sif $argv; 
end
