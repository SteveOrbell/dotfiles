" .vimrc
"
" Steve Orbell <steveorbell@gmail.com>
" http://github.com/steveorbell/dotfiles

" General settings
set nocompatible        " turn off vi compability mode
set shiftwidth=2        " tabs are 2 characters
set expandtab           " replace tabs with spaces
set hidden              " allow switching buffers with unsaved changes

" Colours
set t_Co=256            " enable 256-colour mode
syntax enable           " Enable syntax highlighting
colorscheme vividchalk  " looks like Mac TextMate


" Automatic wrapping of comments at 80 characters
set formatoptions+=c
set textwidth=80

" F7 and F8 to move to next/previous buffer
nmap <F7> :bp<CR>
nmap <F8> :bn<CR>

" Enable the backspace key in insert mode
" See http://vim.wikia.com/wiki/Backspace_and_delete_problems
set backspace=indent,eol,start
