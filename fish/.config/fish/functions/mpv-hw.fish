# Defined in - @ line 1
function mpv-hw --description 'alias mpv-hw mpv --gpu-context=x11egl --hwdec=vaapi'
	mpv --gpu-context=x11egl --hwdec=vaapi $argv;
end
