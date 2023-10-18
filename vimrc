let g:polyglot_disabled = ['autoindent']
set nocompatible
filetype plugin on

" PLUGINS -- Vim-plug
call plug#begin('~/.vim/plugged')
    Plug 'sainnhe/gruvbox-material'

    " pair brackets when typing
    Plug 'jiangmiao/auto-pairs'
    " complete code by pressing TAB
    Plug 'ervandew/supertab'
    " statusline
    Plug 'itchyny/lightline.vim'
    " syntax highlighter 
    Plug 'sheerun/vim-polyglot'
    " make commenting easy
    Plug 'preservim/nerdcommenter'
    " show indentaion
    Plug 'yggdroot/indentline'
    " different cursors for different modes
    Plug 'jszakmeister/vim-togglecursor'
    " css colors on the go
    " Plug 'ap/vim-css-color'
call plug#end()

" nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1

" Gruvbox-material
let g:gruvbox_material_background = 'hard' " available: soft, medium, hard
let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_menu_selection_background = 'green'
let g:gruvbox_material_diagnostic_line_highlight = 1
let g:gruvbox_material_lightline_disable_bold = 1

" indentline
let g:indentLine_setColors = 2
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" Enable 23-bit true color.
set termguicolors
" Set background color.
set background=dark
" Set colorscheme 
colorscheme gruvbox-material

" Lighline
let g:lightline = {
      \ 'colorscheme': 'gruvbox_material',
      \ 'active': {
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'filetype'  ] ]
      \ },
      \ }

if g:colors_name == "everblush"
    let g:everblushNR = 0
    let g:everblush_transp_bg = 0
endif

" Always display status line
set laststatus=2

if !has('gui_running') 
    set t_Co=256
endif

" Display line number and relative to other lines.
set number relativenumber
" Use syntax highlighting.
syntax enable
" Highlight current line (Or underline depends on colorscheme)
set cursorline
" vertical cursor line
set cursorcolumn
" Cursor position relative to row and column. unnecessary when statusline is
" available
set noruler
" Tabbing over moves four spaces.
set tabstop=4
" Number of spaces to use in automatic indentation.
set shiftwidth=4
" Copy indent from current line when starting a new line.
set autoindent
set smartindent
"Auto indentation based on filetype.
filetype plugin indent on
" Smart indentation for C-like language.
set cindent
" Convert tabs to spaces.
set expandtab
" Set the character encoding.
set encoding=UTF-8
" Hide mouse when typing.
set mousehide
" Ignore character case during search.
set ignorecase
" Override the ignorance option if searching for capital letters.
set smartcase
" Search as characters are entered.
set incsearch
" Enable search highlighting for specific string.
set hlsearch
" Visual autocomplete for command menu.
set wildmenu
set wildoptions=fuzzy
" Highlight matching for [{()}]
set showmatch

" Set spell checking for words
if &filetype == 'text' || &filetype == 'markdown'
    set spell
endif

set splitbelow splitright
" Set mouse support 
set mouse=a
" show mode under the statusline
set showmode
" show motions and commands under right side of screen.
set showcmd
" numbers of lines to keep above and below when scrolling
set scrolloff=4
" no more than 85 char on a line
set colorcolumn=85
" don't continue the search if it the last match
set nowrapscan
" set timoutlen

" set leader key
let mapleader = ' '

" maps
noremap <leader>hk :vs ~/hotkeys <cr>

"term buffer
noremap <leader>t :term <cr>
noremap <leader>vt :vert term <cr>

" Make adjusting split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +5<CR>
noremap <silent> <C-Right> :vertical resize -5<CR>
noremap <silent> <C-Up> :resize +5<CR>
noremap <silent> <C-Down> :resize -5<CR>

" Template configs
autocmd BufNewFile *.c 0r ~/.vim/templates/C.c
autocmd BufWinEnter *.c call cursor(4,1)

" Toggle cursor support for unsupported terminal
" NOTE: Cursor customization should be disabled in the terminal config.
if $TERM == 'xterm-256color'
  let g:togglecursor_force = 'xterm'
endif

