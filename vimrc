" PLUGINS -- Vim-plug
call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/syntastic'				" Linter or code checker for vim.
    Plug 'jiangmiao/auto-pairs'             " Automatically pair brackets when typing
    Plug 'ervandew/supertab'                " Auto completion tool to complete code by pressing TAB
    Plug 'itchyny/lightline.vim' 			" Statusline plugin.
    Plug 'morhetz/gruvbox'                  " Gruvbox color
    Plug 'Everblush/everblush.vim'          " Everblush color
    Plug 'jszakmeister/vim-togglecursor'
    Plug 'yggdroot/indentline'
    Plug 'ap/vim-css-color'
call plug#end()

let g:indentLine_setColors = 1

" GVim
let g:indentLine_color_gui = '#424c50'

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

" Background (Vim, GVim)
"let g:indentLine_bgcolor_term = 202
"let g:indentLine_bgcolor_gui = '#FF5F00'

let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" Enable 23-bit true color.
set termguicolors

" Set colorscheme 
colorscheme everblush

if g:colors_name == "everblush"
    let g:everblushNR = 0
    let g:everblush_transp_bg = 0
elseif g:colors_name == "gruvbox"
    let g:gruvbox_contrast_dark = 'hard'
    let g:gruvbox_termcolors = 256
    let g:gruvbox_bold = 1
    let g:gruvbox_italic = 1
    let g:gruvbox_underline = 1
    let g:gruvbox_number_column = 'bg0' 
    let g:gruvbox_italicize_comments = 1
    let g:gruvbox_hls_cursor = 'orange'
    let g:gruvbox_vert_split = 'bg1'
endif

" Set background color.
set background=dark
    
" Lightline specific config
set laststatus=2

if !has('gui_running') 
    set t_Co=256
endif

let g:lightline = {
	        \ 'colorscheme': 'everblush',
	        \}


" Display numbers to the line and relative to other lines.
set number relativenumber

" Use syntax highlighting.
syntax enable

" Highlight current line (Or underline depends on colorscheme)
set cursorline

" Cursor position relative to row and column.
set ruler

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

" Ignore character case sensitivity during search.
set ignorecase

" Override the ignorance option if searching for capital letters.
set smartcase

" Search as characters are entered.
set incsearch

" Enable search highlighting for specific string.
set hlsearch

" Visual autocomplete for command menu.
set wildmenu

" Highlight matching for [{()}]
set showmatch

" Set spell checking for words
set spell

set splitbelow splitright

" Set mouse support 
"set mouse=a

" Make adjusting split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Template configs
autocmd BufNewFile *.c 0r ~/.vim/templates/C.c
autocmd BufWinEnter *.c call cursor(4,1)

"Recommended setting for Syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Set gruvbox color
"autocmd vimenter * ++nested colorscheme gruvbox

" Toggle cursor support for unsupported terminal
" NOTE: Cursor customization should be disable in the terminal config.
if $TERM == 'xterm-256color'
  let g:togglecursor_force = 'xterm'
endif

