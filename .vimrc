set nocompatible              " be iMproved, required
" change words with $
set cpoptions+=$
filetype off                  " required
" Change mapleader
let mapleader=","

" fileencoding
set fileencodings=ucs-bom,cp936,utf-8,gb18030,big5,euc-jp,euc-kr,latin1
nmap <leader>g :e ++enc=gbk<CR>
nmap <leader>G :e ++enc=utf-8<CR>



" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1

"let g:airline_powerline_fonts = 1



" Elixir syntax
" Plugin 'elixir-lang/vim-elixir'
" Supertab
Plugin 'ervandew/supertab'

" Track the engine.
Plugin 'SirVer/ultisnips'

" " Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" " Trigger configuration. Use tab with ultisnips and YCM
" http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
"
" " better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" filesystem tree
Plugin 'scrooloose/nerdtree'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>
map <Leader>n :NERDTree %:p:h<CR>

Plugin 'godlygeek/tabular'
" Plugin 'plasticboy/vim-markdown'
" let g:vim_markdown_folding_disabled=1

"Plugin 'Valloric/YouCompleteMe'

Plugin 'jiangmiao/auto-pairs'

" quick google search
Plugin 'szw/vim-g'

" Plugin 'vim-ruby/vim-ruby'

"Plugin 'wlangstroth/vim-racket'

" Plugin 'fatih/vim-go'

Plugin 'cakebaker/scss-syntax.vim'

Plugin 'chrisbra/Colorizer'

:let g:colorizer_auto_color = 1
:let g:colorizer_auto_filetype='less,sass,scss,js,css,html'
let g:colorizer_syntax = 1

" gc :help commentary
Plugin 'tpope/vim-commentary'

" needed by airline
Plugin 'tpope/vim-fugitive'

Plugin 'Chiel92/vim-autoformat'
noremap <F3> :Autoformat<CR><CR>

" <leader><leader>w go to a word quickly
Plugin 'Lokaltog/vim-easymotion'

Plugin 'rking/ag.vim'

" draw ascii
Plugin 'vim-scripts/DrawIt'

Plugin 'tpope/vim-eunuch'

Plugin 'vim-scripts/DeleteTrailingWhitespace'

" all lanugage support
Plugin 'sheerun/vim-polyglot'

" change surroundins - cs/ds/ysiw/yss
Plugin 'tpope/vim-surround'

" do syntax check
Plugin 'scrooloose/syntastic'

" fuzzy file find
Plugin 'kien/ctrlp.vim'

" vim cscope
" Plugin 'vim-scripts/cscope.vim'

" Elm lang
Plugin 'lambdatoast/elm.vim'

" ansible yaml support
Plugin 'chase/vim-ansible-yaml'

" fireplace for clojure
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-dispatch'

" precision editing for s-expression
Plugin 'guns/vim-sexp'

" clojure runtime files
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'
Plugin 'kien/rainbow_parentheses.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Use the Solarized Dark theme
set background=light
"colorscheme solarized
colorscheme ron
let g:solarized_termtrans=1

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
"set gdefault
" Use UTF-8 without BOM
"set encoding=utf-8 nobomb
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
"set cursorline
" Make tabs as wide as two spaces
set tabstop=2
set expandtab
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
"set lcs=tab:▸\ ,trail:·

set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Use relative line numbers
"if exists("&relativenumber")
"	set relativenumber
"	au BufReadPost * set relativenumber
"endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif

" Tab related
au FileType scss setl sw=2 sts=2 et
au FileType html setl sw=2 sts=2 et
au FileType css setl sw=2 sts=2 et
au FileType elm setl sw=2 sts=2 et
au FileType go setl sw=2 sts=2 et
au FileType scala setl sw=4 sts=4 et

set ts=4
set sw=4

set t_Co=256

" Enable Rainbow Parentheses when dealing with Clojure files
au FileType clojure RainbowParenthesesActivate
au Syntax * RainbowParenthesesLoadRound

" This should enable Emacs like indentation
let g:clojure_fuzzy_indent=1
let g:clojure_align_multiline_strings = 1

" Add some words which should be indented like defn etc: Compojure/compojure-api, midje and schema stuff mostly.
let g:clojure_fuzzy_indent_patterns=['^GET', '^POST', '^PUT', '^DELETE', '^ANY', '^HEAD', '^PATCH', '^OPTIONS', '^def']
autocmd FileType clojure setlocal lispwords+=describe,it,testing,facts,fact,provided

" Disable some irritating mappings
let g:sexp_enable_insert_mode_mappings = 0"

" basic keymapping
noremap <leader>c :! compass compile<CR>

" elixir keymapping
noremap <leader>ed :! mix deps.get<CR>
noremap <leader>ec :! mix compile<CR>
noremap <leader>et :! mix test<CR>
noremap <leader>xt :! mix test<CR>

" clojure keymapping
noremap <leader>cd :! lein deps<CR>
noremap <leader>cc :! lein compile<CR>
noremap <leader>ce :! lein test<CR>
noremap <leader>ce :Eval<CR>

" golang keymapping
noremap <leader>gd :! go get<CR>
noremap <leader>gc :! make<CR>
noremap <leader>gt :! make test<CR>

" tcl keymapping
noremap <leader>tt :set noexpandtab<CR>


" web page
noremap <leader>eh :! open http://elixir-lang.org/docs/stable/elixir/<CR>
noremap <leader>exh :! open http://www.phoenixframework.org/v0.9.0/docs<CR>
noremap <leader>ehp :! open https://hex.pm<CR>

noremap <leader>gh :! open https://github.com<CR>

