" Use Vim settings, rather then Vi settings (much better!).
" " This must be first, because it changes other options as a side effect.
set nocompatible

" This makes sure that whenever I save this file, it is reloaded in my current editor
" So any changes I save to the vimrc file are automatically in effect as soon as I save it.
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

" This sets up the pathogen plugin, which allows me to install other plugins
" as a bundle
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Enable syntax highlighting.
syntax on

" Tabs should be converted to a group of 4 spaces.
" This is the official Python convention
" (http://www.python.org/dev/peps/pep-0008/)
set shiftwidth=4
set textwidth=121
set tabstop=4
set softtabstop=4
set expandtab
set smarttab

" Set utf-8 encoding
set encoding=utf-8

" Set status
set laststatus=2
set statusline=
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " filename
set statusline+=%h%m%r%w                     " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=%=                           " right align remainder
" set statusline+=0x%-8B                       " character value
set statusline+=%-14(%l,%c%V%)               " line, character
set statusline+=%<%P                         " file position
set statusline+=%#warningmsg#                " syntastic warning
set statusline+=%{SyntasticStatuslineFlag()} " syntastic status flag
set statusline+=%{fugitive#statusline()}     " fugutive git info

" Show line number and cursor position
set ruler

" Display incomplete commands.
set showcmd

" Key (re) mappings
" Map the C-movement keys to window movement, I always delete words when I don't
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k

" Search stuff
set showmatch " show matching brackets
set matchtime=5 " how many tenths of a second to blink matching brackets for
set nohlsearch " do not highlight searched for phrases
set incsearch

" Indenting
set smartindent
set noautoindent " Autoindent drives me nuts

" Folding
" Folding options confuse me and seem to hamper my productivity
" Commenting them out for now
set foldenable
" set foldmethod=indent
" set foldlevelstart=99
"" Save my folds automagically
" au BufWinLeave * mkview
" au BufWinEnter * silent loadview

filetype plugin indent on " load filetype plugins with their indent rules

" Set a readable colorscheme, especially for the comment sections which used
" are unreadable in darkblue
colorscheme desert
" These are few additions to the colorsettings of desert scheme that I find usefull
hi NonText ctermfg=DarkGrey ctermbg=NONE
hi SpecialKey ctermfg=DarkGrey ctermbg=NONE

" Show autocomplete menus
set wildmenu

" Set linenumbers on
set number

" Show tabs instead of spaces and any trailing whitespace
set list
set listchars=tab:→.,trail:-,eol:↵

" Set autocompletion for python
" Bindings are the standard Crtl+N or Crtl+X Ctrl+O
autocmd FileType python set omnifunc=pythoncomplete#Complete

" Syntastic error window should auto open on errors
let g:syntastic_auto_loc_list=2
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

" buffergator plugin settings
" split size = 20
let g:buffergator_split_size = 30
" sort buffers by most recently used
let g:buffergator_sort_regime = 'mru'
" only show buffer name, don't bother with dirs/filenames
let g:buffergator_display_regime = 'basename'
