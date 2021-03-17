# Defined in - @ line 1
function azure --wraps='ssh -i ~/.ssh/azure o__ni@IP' --description 'alias azure ssh -i ~/.ssh/azure o__ni@IP'
  ssh -i ~/.ssh/azure o__ni@IP $argv;
end
