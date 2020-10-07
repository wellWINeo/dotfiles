call plug#begin("~/.vim/plugged")
	" Plugin section
	Plug 'morhetz/gruvbox'
	Plug 'OmniSharp/omnisharp-vim'
	"Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'sainnhe/gruvbox-material'
	Plug 'neoclide/coc.nvim', {'branch':'release'}
	Plug 'Raimondi/delimitMate'
	Plug 'gentoo/gentoo-syntax'
	Plug 'neoclide/coc-python'
	"Plug 'ryanoasis/vim-devicons'
	Plug 'altercation/vim-colors-solarized'
call plug#end()

"Config section
syntax on

let g:loaded_python_provider = 0

" omnisharp settings
let g:OmniSharp_server_use_mono = 1
let g:OmniSharp_popup = 1
let g:OmniSharp_highlighting = 3


" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)
