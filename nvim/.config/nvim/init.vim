call plug#begin("~/.vim/plugged")
	" Plugin section
	Plug 'morhetz/gruvbox'
	Plug 'OmniSharp/omnisharp-vim'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'sainnhe/gruvbox-material'
	Plug 'neoclide/coc.nvim', {'branch':'release'}
	Plug 'Raimondi/delimitMate'
	Plug 'gentoo/gentoo-syntax'
	Plug 'neoclide/coc-python'
	Plug 'itchyny/lightline.vim'
	Plug 'shinchu/lightline-gruvbox.vim'
	Plug 'scrooloose/nerdtree'
	Plug 'myusuf3/numbers.vim'
call plug#end()

"Config section
syntax on
colorscheme gruvbox
set cursorline


"" lightline settings
" display lightline
set laststatus=2
set noshowmode
"" theme
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

""nerdtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapOpenInTab='\r'
let NERDTreeMapOpenInTab='<ENTER>'

let g:loaded_python_provider = 0

" omnisharp settings
let g:OmniSharp_server_use_mono = 0
let g:OmniSharp_popup = 1
let g:OmniSharp_highlighting = 3

" Tab size
set tabstop=4
set shiftwidth=4
set expandtab

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<C-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<C-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)