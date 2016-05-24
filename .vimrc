" Taken from http://dougblack.io/words/a-good-vimrc.html

colorscheme desert256v2 " awesome colorscheme

syntax enable           " enable syntax processing

set tabstop=4       " number of visual spaces per TAB

set softtabstop=4   " number of spaces in tab when editing

set expandtab       " tabs are spaces

set wrap                
set linebreak
set nolist              " list disables linebreak

set number              " show line numbers
set relativenumber      " show relative line numbers

" This makes gj/gk move by virtual lines when used without a count, and by physical lines when used with a count.
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

set showcmd             " show command in bottom bar

set cursorline          " highlight current line

filetype indent on      " load filetype-specific indent files

set wildmenu            " visual autocomplete for command menu

set lazyredraw          " redraw only when we need to.

set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" use tabs for Makefiles
autocmd FileType make setlocal noexpandtab

" Make Y yank everything from the cursor to the end of the line. This makes Y
" act more like C or D because by default, Y yanks the current line (i.e. the
" same as yy).
noremap Y y$

" Make Ctrl-e jump to the end of the current line in the insert mode. This is
" handy when you are in the middle of a line and would like to go to its end
" without switching to the normal mode.
inoremap <C-e> <C-o>$
