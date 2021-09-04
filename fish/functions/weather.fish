# Defined in - @ line 1
function weather --description 'alias weather curl wttr.in'
	curl 'wttr.in/~<your-city>?Q${argv}';
end
