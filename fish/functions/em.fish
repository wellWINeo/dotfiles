# Defined in - @ line 1
function em --wraps=emacs --description 'alias em emacs'
  TERM=xterm-emacs emacsclient -nw  $argv;
end
