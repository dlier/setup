" --------------------------------------------------------------------
"
" Author: Daniel Lier       Date: 10.07.2017
"
" --------------------------------------------------------------------



" ----- prepare vundle ------------------------------------------------
"
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" ----- vundle  begin -------------------------------------------------
"
call vundle#begin()

" plugin manager - https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
Plugin 'VundleVim/Vundle.vim'

"Plugin 'altercation/vim-colors-solarized'

"color scheme
Plugin 'tomasr/molokai'

" status bar - https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
Plugin 'vim-airline/vim-airline'

" status bat themes - https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
Plugin 'vim-airline/vim-airline-themes'

" syntax checking - https://github.com/vim-syntastic/syntastic ~/.vim/bundle/syntastic
Plugin 'vim-syntastic/syntastic'

" miscellaneous auto-load Vim scripts - https://github.com/xolox/vim-misc ~/.vim/bundle/vim-misc
Plugin 'xolox/vim-misc'

" automated tagfile generation - https://github.com/xolox/vim-easytags ~/.vim/bundle/vim-easytags
Plugin 'xolox/vim-easytags'

" display tags in window - https://github.com/majutsushi/tagbar ~/.vim/bundle/tagbar
Plugin 'majutsushi/tagbar'

" fuzzy file, buffer, mru, tag, ... finder - https://github.com/kien/ctrlp.vim ~/.vim/bundle/ctrlp.vim
Plugin 'ctrlpvim/ctrlp.vim'

" alternate files quickly - https://github.com/vim-scripts/a.vim ~/.vim/bundle/a.vim
Plugin 'vim-scripts/a.vim'

" auto-completion for quotes, parens, brackets, etc. - https://github.com/Raimondi/delimitMate ~/.vim/bundle/deliMate
Plugin 'Raimondi/delimitMate'

" show git diff in the gutter - https://github.com/airblade/vim-gitgutter ~/.vim/bundle/vim-gitgutter 
Plugin 'airblade/vim-gitgutter'

" git wrapper - https://github.com/tpope/vim-fugitive ~/.vim/bundle/vim-fugitive
Plugin 'tpope/vim-fugitive'

" file browser - https://github.com/scrooloose/nerdtree ~/.vim/bundle/nerdtree
Plugin 'scrooloose/nerdtree'

call vundle#end()
"
" ----- vundle  end ---------------------------------------------------



" ----- automatically reload .vimrc file ------------------------------
"
autocmd! bufwritepost .vimrc source %


" ----- cinfigure nerd tree -------------------------------------------
"
map <C-n> :NERDTreeToggle<CR>


" ----- configure filetype detection, plugin and ident ----------------
"
filetype plugin indent on


" ----- general settings ----------------------------------------------
"
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set mouse=a

" ----- disable arrow keys --------------------------------------------
"
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" ----- configuraton for syntastic and vim-gitgutter ------------------
"
hi clear SignColumn


" ----- Plugin-Specific Settings --------------------------------------
" ----- altercation/vim-colors-solarized settings -----
" Toggle this to "light" for light colorscheme
"syntax enable
"set background=dark

" Uncomment the next line if your terminal is not configured for solarized
"let g:solarized_termcolors=256
"set t_Co=256

" Set the colorscheme
"colorscheme solarized

" ----- bling/vim-airline settings -----
" Always show statusbar
set laststatus=2

" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
"     https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click "Install"
" Finally, uncomment the next line
"let g:airline_powerline_fonts = 1
" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1

" Use the solarized theme for the Airline status bar
"let g:airline_theme='solarized'
"let g:airline_solarized_bg='dark'

" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END
 
" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags

" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1
let g:easytags_auto_highlight=0

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>

" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)
 

" ----- airblade/vim-gitgutter settings -----
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1
 
" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

"undo search highliting when selecting esc
nnoremap <silent> <esc> :noh<cr><esc>




