"Syntax and colors first because they are obviously the most important
syntax on
set background=light
colorscheme ron 

"Numbers are nice
set number
set rnu
set ruler

"Set backspace to work correctly
set backspace=indent,eol,start

"Smartcase is bae
set smartcase

"indentation for python
filetype indent plugin on

"Set tabs to a soft 2
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2

"Set default filetype to unix
set ffs=unix,dos,mac

"Mouse please
set mouse=a

"Indent based folding
set foldmethod=indent

"Space to fold
nnoremap <Space> za

"Hide swap files in netrw
let g:netrw_list_hide= '.*\.swp$,\~$,\.orig$'

"""""""""""""""""""""""""""""""""""""""""""""""""
"" Macros
"""""""""""""""""""""""""""""""""""""""""""""""""

"CSS
"Pretty comment header
let @h = "i//////////////////////////////////////////////////////////////////////// //////////////////////////////////////////////////////////////////////k"

"JS
"console.log
let @l = "oconsole.log();bl"
