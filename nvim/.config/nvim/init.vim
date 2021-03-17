call plug#begin("~/.vim/plugged")
	" Plugin section
	Plug 'lifepillar/vim-solarized8'
    Plug 'OmniSharp/omnisharp-vim'
	Plug 'neoclide/coc.nvim', {'branch':'release'}
	Plug 'Raimondi/delimitMate'
	Plug 'gentoo/gentoo-syntax'
	Plug 'neoclide/coc-python'
	Plug 'itchyny/lightline.vim'
    Plug 'taohexxx/lightline-solarized'
	Plug 'scrooloose/nerdtree'
	Plug 'myusuf3/numbers.vim'
    Plug 'tpope/vim-commentary'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'neoclide/coc-highlight'
call plug#end()

"Config section
syntax on
colorscheme solarized8
let g:solarized_use16=1
set cursorline

" Python commentary
autocmd FileType python setlocal commentstring=#\ %s

" lightline settings
" display lightline
set laststatus=2
set noshowmode
" theme
let g:lightline = {}
let g:lightline.colorscheme = 'lightline_solarized'

" nerdtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapOpenInTab='\r'
let NERDTreeMapOpenInTab='<ENTER>'

let g:loaded_python_provider = 0

" omnisharp settings
let g:OmniSharp_server_use_mono = 1
let g:OmniSharp_popup = 1
let g:OmniSharp_highlighting = 3
let g:OmniSharp_server_stdio = 1

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

" GO
let g:go_bin_path = $HOME."/go/bin"

" XAML
autocmd BufNewFile,BufRead *.xaml set filetype=xml

set t_Co=256

map <C-f> :CocFix<CR>
