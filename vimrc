"By default, vim works just like vi, this is what compatible means
" Gotta to be the first setting in vimrc
set nocompatible

" Vundle plugin management
filetype off

" set the runtimepath to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'pseewald/nerdtree-tagbar-combined'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'easymotion/vim-easymotion'
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-easymotion.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mbbill/undotree'
Plugin 'vim-scripts/a.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'

if has("patch-7.4-1486")
Plugin 'scrooloose/syntastic'
endif

if has("patch-7.4-1578") && executable("cmake")
Plugin 'Valloric/YouCompleteMe'
endif

call vundle#end()

" Enable filetype plugins indent and syntax
filetype plugin indent on
syntax on

" Color Scheme
" molokai, hybrid, jellybeans, codeschool, solarized, railscasts
set background=dark " for hybrid and solarized
colorscheme molokai
set t_Co=256

" Map leader key
let mapleader=","

" General Setting
set number " Left side line number
set ruler " Measure the column and line number on the status line
set backspace=indent,eol,start " Change backspace mapping to a more commonly-used style
set showcmd " Show command in the last line of the screen, such as: 2dd
set cursorline " Highlight the current line
set wildmenu " Show a menu when typing filename in command line
set showmatch " Highlight matched ({[]})
set matchtime=5 " Highlighting time, unit: tenths of a second
set nowrap " Don't wrap the line when the line is too long
set scrolloff=5 " Minimal number of lines above and below the cursor
set lazyredraw " Stop redrawing the screen while executing macros
set noerrorbells " Stop error beeping
set vb t_vb= " Stop error beeping
" set autochdir " cd to current working directorv
set path+=** " find path

set encoding=utf-8
set fileencoding=utf-8

" Backup and Swap Files setting
" // means using the full path as file name so that A/main.cpp and B/main.cpp won't collide
set backup
set swapfile
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//
set writebackup

" Search Related
set ignorecase " Ignore the case in the pattern
set smartcase " When the pattern contains uppercase letters, ignorecase will be turned off.
set incsearch " Automatically track the matched item while typing
set hlsearch " Highlight the searched item
" Turn off the highlighted searching temporally
nnoremap <leader><space> :nohlsearch<CR> 

" Enable mouse
set mouse=a

" Moving
" Moving around different windows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap <left> :bp<cr>
nnoremap <right> :bn<cr>
nnoremap <up> :tabp<cr>
nnoremap <down> :tabn<cr>

" Edit vimrc/bashrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Initial size of the vim window
" if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
"   set lines=999 columns=999
" else
  " This is console Vim.
"   if exists("+lines")
"     set lines=70
"   endif
"   if exists("+columns")
"     set columns=210
"   endif
" endif

" Indentation
" set autoindent " works fine for regular normal files
" set smartindent " works fine for most files
set cindent " works better for C/C++ files
" Only space
set expandtab
set shiftwidth=4
set softtabstop=4
" Only TAB
" set shiftwidth=2
" set tabstop=2
" Mixed TAB and space
" set shiftwidth=2
" set softtabstop=2

" Folding
set foldenable " enable folding
set foldmethod=indent " fold based on indent level
set foldlevelstart=10 " open most folds by default
set foldnestmax=10 " maximum nested fold

" Save Views
autocmd BufWinLeave ?* mkview
autocmd BufWinEnter ?* silent loadview

" Airline
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#tab_nr_type = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {
    \ '0': '0 ',
    \ '1': '1 ',
    \ '2': '2 ',
    \ '3': '3 ',
    \ '4': '4 ',
    \ '5': '5 ',
    \ '6': '6 ',
    \ '7': '7 ',
    \ '8': '8 ',
    \ '9': '9 '
    \}
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tagbar#enabled = 1

" Undotree
nnoremap <F7> :UndotreeToggle<cr>

" EasyMotion
" You can use other keymappings like <C-l> instead of <CR> if you want to
" use these mappings as default search and somtimes want to move cursor with
" EasyMotion.
let g:EasyMotion_do_mapping=0
let g:EasyMotion_smartcase=1
let g:EasyMotion_startofline=0
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
map  <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
map  <Leader>j <Plug>(easymotion-j)
map  <Leader>k <Plug>(easymotion-k)
map  <Leader>l <Plug>(easymotion-lineforward)
map  <Leader>h <Plug>(easymotion-linebackward)
function! s:incsearch_config(...) abort
  return incsearch#util#deepextend(deepcopy({
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {
  \     "\<CR>": '<Over>(easymotion)'
  \   },
  \   'is_expr': 0
  \ }), get(a:, 1, {}))
endfunction
noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))

" Syntastic
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll)$',
	\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
	\ }

" SuperTab Setting
let g:SuperTabDefaultCompletionType = '<c-p>'
let g:SuperTabDefaultCompletionType = 'context'

" NERDTree-Tagbar-Combined Setting
nmap <F8> :ToggleNERDTreeAndTagbar<CR>

" Indent Guide
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=darkred   ctermbg=darkgrey
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgreen ctermbg=black

" NerdCommenter
let g:NERDSpaceDelims=1

" UltiSnips Setting
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
