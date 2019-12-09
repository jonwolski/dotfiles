set nocompatible              " Use vim defaults
"set ls=2                      " Always show status line
set showcmd                   " Show incomplete commands
set scrolloff=3               " Keep 3 lines when scrolling
set ruler                     " Show the cursor position all the time
set title                     " Show title in console title bar
set hid                       " Change buffer without saving
set showmatch                 " Show matching bracets

set ts=2                      " Numbers of spaces of tab character
set sw=2                      " Numbers of spaces to (auto)indent
set et                        " Tabs are converted to spaces, use only when required
set sts=2                     " Soft tab stop
set smartindent               " Smart indent
set autoindent
set nocindent
set wrap

set hlsearch                  " Highlight searches
set incsearch                 " Do incremental searching

set cursorline

if has("autocmd")
"au FileType cpp,c,java,sh,pl,php,python,ruby set autoindent
"au FileType cpp,c,java,sh,pl,php,py,rb set smartindent
au FileType cpp,c,java,sh,pl,php set cindent
au BufRead *.py set cinwords=if,elif,else,for,while,try,except,finally,def,class
au BufRead *.rb set cinwords=if,elsif,else,unless,for,while,begin,rescue,def,class,module
"au BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
"au BufRead *.rb set smartindent cinwords=if,elsif,else,unless,for,while,begin,rescue,def,class,module
endif

"Spell check for prose file types
autocmd FileType markdown setlocal spell
autocmd FileType gitcommit setlocal spell

syntax on
"set background=dark
"hi Normal ctermfg=grey ctermbg=darkgrey
hi PreProc ctermfg=magenta
hi Statement ctermfg=darkYellow
hi Type ctermfg=blue
hi Function ctermfg=blue
hi Identifier ctermfg=darkBlue
hi Special ctermfg=darkCyan
hi Constant ctermfg=darkCyan
hi Comment ctermfg=darkGreen
au BufRead,BufNewFile *.rb hi rubySymbol ctermfg=green

set rnu

" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

set tabstop=2
set shiftwidth=2
set expandtab
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

call pathogen#infect()
syntax enable
filetype plugin indent on

set runtimepath^=~/.vim/bundle/ctrlp.vim
if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif
