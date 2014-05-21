set hidden
set history=1000
set wildmenu
set wildmode=list:longest
set title
set ruler
syntax on
filetype on
filetype plugin on
filetype indent on
" Only do this part when compiled with support for autocommands.
if has("autocmd")
    " Use filetype detection and file-based automatic indenting.
    filetype plugin indent on

    " Use actual tab chars in Makefiles.
    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif
" For everything else, use a tab width of 4 space chars.
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4.
set softtabstop=4   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces.

let mapleader = ","
:nnoremap <F5> :buffers<CR>:buffer<Space>
execute pathogen#infect()
call pathogen#helptags() 


silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>

let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

let g:nerdtree_tabs_open_on_console_startup=0
let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_smart_startup_focus=2

let NERDTreeIgnore=['\~$', 'CVS', '^\.git', '\.swp$', '\.DS_Store$']
let NERDTreeShowHidden=1

syntax enable
set background=light
colorscheme solarized


" ---------------------------------------------------------------------------
"  """"" Settings for taglist.vim
let Tlist_Use_Right_Window=1
let Tlist_Auto_Open=0
let Tlist_Enable_Fold_Column=0
let Tlist_Compact_Format=0
let Tlist_WinWidth=28
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close = 1
"nmap <LocalLeader>tt :Tlist<cr>
:nnoremap <F6> :Tlist<CR>

