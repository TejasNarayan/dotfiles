set number
set relativenumber
set hidden
set nocompatible              " be iMproved, required
colorscheme Tomorrow-Night-Bright 
hi Normal ctermbg=none           " Keep the transparency
highlight NonText ctermbg=none   " ^

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Installs something that lets me know about the indent
Plugin 'Yggdroot/indentLine'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install the scource tree
Plugin 'scrooloose/nerdtree'

" Makes life easier
Plugin 'tpope/vim-surround'               " Easyily manipulate surrounding tags

" I like this color scheme better <- Changed my mind, not really
Plugin 'trusktr/seti.vim'

" Code completion
Plugin 'Valloric/YouCompleteMe'

" Tabular
Plugin 'godlygeek/tabular'

" SuperTab
Plugin 'ervandew/supertab'

" Indent Guides
Plugin 'nathanaelkane/vim-indent-guides'

" vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" GitGutter
Plugin 'airblade/vim-gitgutter'

" Control Space
Plugin 'vim-ctrlspace/vim-ctrlspace'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"-----------------------------------------------------------------------------------------

" Auto start the NERD source tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open NERD source tree on
map <C-o> :NERDTreeToggle<CR>

set runtimepath^=~/.vim/bundle/ctrlp.vim

"------------------------------------------------------------------------------------------

" Install Pathogen
execute pathogen#infect()

" The settings for Syntastic <- installed by Pathogen 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ----------------------------------------------------------------------------------------
"  Airline theme changing

let g:airline_theme='wombat'

set laststatus=2

" air-line
 let g:airline_powerline_fonts = 1

 if !exists('g:airline_symbols')
     let g:airline_symbols = {}
     endif

"     " unicode symbols
     let g:airline_left_sep = '»'
     let g:airline_left_sep = '▶'
     let g:airline_right_sep = '«'
     let g:airline_right_sep = '◀'
     let g:airline_symbols.linenr = '␊'
     let g:airline_symbols.linenr = '␤'
     let g:airline_symbols.linenr = '¶'
     let g:airline_symbols.branch = '⎇'
     let g:airline_symbols.paste = 'ρ'
     let g:airline_symbols.paste = 'Þ'
     let g:airline_symbols.paste = '∥'
     let g:airline_symbols.whitespace = ' '

     " airline symbols
     let g:airline_left_sep = ''
     let g:airline_left_alt_sep = ''
     let g:airline_right_sep = ''
     let g:airline_right_alt_sep = ''
     let g:airline_symbols.branch = ''
     let g:airline_symbols.readonly = ''
     let g:airline_symbols.linenr = ''

"----------------------------------------------------------------------------------------
" set tabs to have 2 spaces
set ts=2

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline
