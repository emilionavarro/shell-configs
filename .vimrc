set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'Valloric/YouCompleteMe'
"call vundle#end()            " required
filetype plugin indent on    " required

execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set number
set runtimepath^=~/.vim/bundle/ctrlp.vim
set laststatus=2
set statusline=%f
set t_Co=256
set hlsearch
set foldmethod=syntax
let g:xml_syntax_folding=1

" Proper tabbing
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

" No Word Wrapping
set textwidth=0
set wrapmargin=0

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers = ["go"]
let g:syntastic_typescript_checker = ["tslint"]
let g:syntastic_typescript_tslint_args = "--config /home/wully/js/tslintconfig.json"
let g:go_list_type = "quickfix"
let g:go_fmt_fail_silently = 1
let g:airline#extensions#tabline#enabled = 1
" markdown compatible
let g:table_mode_corner='|'
let g:table_mode_header_fillchar='-'
" netrw settings
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_browse_split=3
let g:netrw_winsize=30

syntax enable
set background=dark
colorscheme pablo

filetype plugin indent on

set clipboard=unnamed
set mouse=a

" edit vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" show whitespaces
nnoremap <leader>W :set list<cr>:set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:~<cr>

" hide whitespaces
nnoremap <leader>w :set nolist<cr>


""""" JSON 
" format selected json
vnoremap <leader>fj :'<,'>! jq .<cr>

" format all json
nnoremap <leader>fj :%! jq .<cr>

" minify selected json
vnoremap <leader>mj :'<,'>! jq -c .<cr>

" minify all json
nnoremap <leader>mj :%! jq -c .<cr>

" show/hide linums
nnoremap <leader>ln :set invnumber<cr>

""""" XML
" format all xml
nnoremap <leader>fx :%! xmllint --format -<cr>

" save file
nnoremap <leader>w :w<cr>

" save and quit
nnoremap <leader>q :wq<cr>

" quit no save
nnoremap <leader>Q :q<cr>

" explore
nnoremap <leader>x :Vex<cr>


" au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim
"


augroup XML
    autocmd!
    autocmd FileType xml setlocal foldmethod=indent foldlevelstart=999 foldminlines=0
augroup END

highlight red ctermbg=darkred guibg=darkred

