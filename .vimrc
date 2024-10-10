set nocompatible      " Enable Vim mode (instead of vi emulation)

let g:is_posix = 1    " Our /bin/sh is POSIX, not bash
set autoindent        " Intelligent indentation matching
set autoread          " Update the file if it's changed externally
set backspace=indent,eol,start  " Allow backspacing over anything
set belloff=all       " Turn off bells
set display=truncate  " Show '@@@' when the last screen line overflows
set formatoptions+=j  " Delete comment char when joining lines
set history=100       " Undo up to this many commands
set hlsearch          " Highlight search results
set incsearch         " Highlight search matches as you type them
set ruler             " Show cursor position
set ttyfast           " Redraw faster for smoother scrolling
set wildmenu          " Show menu for tab completion in command mode
set number            " Show line numbers
set termguicolors     " Set colors

highlight LineNr ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

try                   
    syntax on         " Enable syntax highlighting
catch | endtry        " vim-tiny is installed without the syntax files

if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
    set fileencodings=ucs-bom,utf-8,latin1
endif

" CTRL-L will mute highlighted search results
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Catppuccin colorscheme
" source /home/danny/.vim/catppuccin_mocha.vim

call plug#begin()

" List your plugins here
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'lervag/vimtex'

call plug#end()

colorscheme catppuccin-mocha " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

" vimtex config

" viewer method:
let g:vimtex_view_method = 'zathura'

" Add background opacity

hi Normal guibg=NONE ctermbg=NONE

" Vimtex output directory

let g:vimtex_compiler_latexmk = {
			\ 'out_dir' : 'build',
			\}
