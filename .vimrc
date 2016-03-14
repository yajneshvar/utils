" Douglas Black
" https://github.com/dougblack/dotfiles/blob/master/.vimrc
" Colors {{{
    syntax on           " enable syntax processing
" }}}
" Misc {{{
    set ttyfast                     " faster redraw
    set backspace=indent,eol,start
" }}}
" Spaces & Tabs {{{
    set tabstop=4           " 4 space tab
    set expandtab           " use spaces for tabs
    set softtabstop=4       " 4 space tab
    set shiftwidth=4
    set modelines=1
    filetype indent on
    filetype plugin on
    set autoindent
" }}}
" UI Layout {{{
    set number              " show line numbers
    set showcmd             " show command in bottom bar
    set nocursorline          " highlight current line
    set wildmenu
    "set lazyredraw
    set showmatch           " higlight matching parenthesis
" }}}
" Searching {{{
    set ignorecase          " ignore case when searching
    set incsearch           " search as characters are entered
    set hlsearch            " highlight all matches
" }}}
" Folding {{{
"=== folding ===
    set foldmethod=indent   " fold based on indent level
    set foldnestmax=10      " max 10 depth
    "set foldenable          " don't fold files by default on open
    nnoremap <space> za
    set foldlevelstart=10    " start with fold level of 1
" }}}

" Powerline {{{
    "set encoding=utf-8
    "python from powerline.vim import setup as powerline_setup
    "python powerline_setup()
    "python del powerline_setup
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    set laststatus=2
    " Syntastic {{{
    let g:syntastic_python_flake8_args='--ignore=E501'
    let g:syntastic_ignore_files = ['.java$']
" }}}

"Pathogen {{{
    filetype off
    "call pathogen#runtime_append_all_bundles()
    call pathogen#infect()
    "call pathogen#helptags()
    filetype plugin indent on
    " vim:foldmethod=marker:foldlevel=0
"}}}

" autosearch {{{
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
" }}}

