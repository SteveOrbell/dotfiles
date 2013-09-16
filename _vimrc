" Vim configuration
"
" Steve Orbell <steveorbell@gmail.com>
" http://github.com/steveorbell/vim-config
" Load all plugins
call pathogen#infect()

set nocompatible  " We don't want vi compatibility.

" Enable the backspace key in insert mode
" See http://vim.wikia.com/wiki/Backspace_and_delete_problems
set backspace=indent,eol,start

syntax on
filetype plugin indent on

" Recognise Guardfiles as ruby
au BufNewFile,BufRead Guardfile.* set filetype=ruby

" Use the vividchalk colourscheme.  Looks much like TextMate on the Mac.
colorscheme vividchalk

" Tabs are 2 characters, replace tabs with spaces.
set shiftwidth=2
set expandtab

" Strip trailing whitespace on save - for all file types.
" See http://vim.wikia.com/wiki/Remove_unwanted_spaces
autocmd BufWritePre * :%s/\s\+$//e

" Automatic wrapping of comments at 80 characters
set formatoptions+=c
set textwidth=80

" Allow switching between buffers even if the current buffer has unsaved
" changes
set hidden

" F7 and F8 to move to next/previous buffer
nmap <F7> :bp<CR>
nmap <F8> :bn<CR>
" F2 to save whilst in insert mode (remain in insert mode)
imap <F2> <C-o>:w<CR>
" Ctrl+ up/down to scroll
nmap <C-Down> <Down><C-e>
nmap <C-Up> <Up><C-y>
" Ctrl+Shift+ up/down to move through grep matches
nmap <C-S-Down> :cn<CR>
nmap <C-S-Up> :cp<CR>

" Search for a file using FuzzyFinder
nmap <silent> sf :FufFile<CR>
" Search for a buffer using FuzzyFinder
nmap <silent> sb :FufBuffer<CR>

if has('statusline')
  " Set a statusline - but don't attempt to run this when launching vim in vi
  " mode on Linux (by typing 'vi <file>').
  hi User1 guifg=#eea040 guibg=#222222
  hi User2 guifg=#dd3333 guibg=#222222
  hi User3 guifg=#ff66ff guibg=#222222
  hi User4 guifg=#a0ee40 guibg=#222222
  hi User5 guifg=#eeee40 guibg=#222222

  set statusline=
  set statusline +=%1*\ %n\ %*            "buffer number
  set statusline +=%5*%{&ff}%*            "file format
  set statusline +=%3*%y%*                "file type
  set statusline +=%4*\ %<%F%*            "full path
  set statusline +=%2*%m%*                "modified flag
  set statusline +=%1*%=%5l%*             "current line
  set statusline +=%2*/%L%*               "total lines
  set statusline +=%1*%4v\ %*             "virtual column number
  set statusline +=%2*0x%04B\ %*          "character under cursor

  set laststatus=2
endif

if has('gui_running')
  " Settings for GUI mode - i.e. running under Windows

  " Change the font and font size.
  set guifont=Consolas:h10:cANSI

  " Maximise the window (on Windows)
  " http://vim.wikia.com/wiki/Maximize_or_set_initial_window_size
  au GUIEnter * simalt ~x

  " Highlight text that goes over the 80 column limit.  This is Windows only
  " because Vim on Linux is often used for log files, where this setting is a
  " nuisance!
  " See http://stackoverflow.com/questions/235439/vim-80-column-layout-concerns
  "
  " Currently disabled while trialling sparkup HTML plugin
  " set colorcolumn=81

  " Make the unnamed register the same as the clipboard register.  The unnamed
  " register is where text is stored when you yank it.  By making it the same
  " as the clipboard, yanking and pasting in Vim affects the Windows clipboard.
  " http://vim.wikia.com/wiki/VimTip21
  set clipboard=unnamed

  " Put temporary files in the temp directory, rather than the current
  " directory (so they don't turn up in svn/git status).
  " http://stackoverflow.com/questions/4824188/git-ignore-vim-temporary-files
  set backupdir=$TEMP//
  set directory=$TEMP//

  " Force vim to use Slick grep on Windows (rather than 'findstr'), and tell it
  " how to interpret the results that it gets (filename + space + line number +
  " space + column number + colon + the match string)
  set grepprg=grep
  set grepformat=%f\ %l\ %c:%m
endif
