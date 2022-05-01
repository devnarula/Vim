set number
syntax on
set autoindent
set background=dark
set ts=4
set sw=4
set laststatus=2
set noshowmode
inoremap { {}<Left>
filetype plugin on

let g:gruvbox_contrast_dark = 'hard'
inoremap {<CR> {<CR>} <Esc>O
inoremap {{ {
inoremap {} {}

autocmd filetype c nnoremap <F9> :w <bar> !gcc % -o %:r <CR>
autocmd filetype c nnoremap <F10> :!clear && ./%:r<CR>

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'sirver/ultisnips'
call plug#end()

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsEditSplit="vertical"
autocmd vimenter * ++nested colorscheme gruvbox
