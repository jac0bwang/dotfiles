"==============================================================================
"Pathogen
"==============================================================================
execute pathogen#infect()
syntax on
filetype plugin indent on

"==============================================================================
"coding standard guidelines.
"==============================================================================
set shiftwidth=4 tabstop=4
set softtabstop=4
set nosmarttab expandtab
"set textwidth=80                "line width
" 80 characters line
set colorcolumn=81

"==============================================================================
"Vim settings
"==============================================================================
"set ruler                       "disply the row col number in the task bar
set ic                          "ignore case in search
set laststatus=2                "status bar on always
"set showtabline=2               "tab bar on alwasy
"set splitright                  "new window alwasys on right
set wildmenu                    "smart cmd completion option on status bar
set wildmode=full               "smart cmd completion option on status bar zsh
set autoindent                  "next line starts in the same point
set incsearch                   "highlights search patter while typing the pattern
set hlsearch                    "highlights all the search pattern
set tagstack                    "Control t and ] for tags.
"set guioptions-=T               "Disable the tools bar for gvim
set ch=2                        "set the command line high
set tabpagemax=10               "Set tab limits
set fillchars+=vert:\           "Set the vertical split without any char
set cursorline                  "higlight the cursor line
set number                      "Show line number
set pastetoggle=<F5>            "set paste use the system Clipboard
set history=200                 "set the history 200 command line

"==============================================================================
"Plugins (~sridharp/.vim/plugin)
"==============================================================================
"Tlist
"cscopeMenu
"cscope_win
"MRU
"NERDtree
"conque_term
"colorscheme mirodark

"MRU function keys
"=================
"o          Open file under curser in the MRU window
"t          Open file under curser in new tab
"v          Open file under curser in viewonly mode
"q          quit
"MRU pat    list only the file that matches pat

"NERDtree function keys
"======================
"q          quit
"t          open in a new tab
"T          preveiw in new tab
"i gi       open/preview in horizontal split
"s gs       open/preview in vertical split
"I          List the hidden files(like .vimrc) (toggle)
"F          List files (toggle)
"B          list bookmark (toggle)
"A          maximize/minimize Nerdtree window (toggel)
"o O        open the dir/Recursivly
"x X        close the dir/Recursivly
"<C j>      go to next siblings
"<C k>      go to privious siblings
"r R        refresh current/root

"NERDTree keymap
"=============
nmap <C-\>' :NERDTreeToggle <CR>

"==============================================================================
"Cscope stuffs"
"==============================================================================
"set csprg=~/bin/cscope
cs add $WS_BASE_/$BR_INFO_DIR/cscope.out
set tags=$WS_BASE_/$BR_INFO_DIR/tags
set cscopetag

set csto=0                      "Search cscope first then tags, (1 otherwise)
set cspc=4                      "don't list full file path in cscope results
set cscopeverbose               "show msg when any other cscope db added

set cst
set nocst

"==============================================================================
"Key maps
"==============================================================================
"       0 or s: Find this C symbol
"       1 or g: Find this definition
"       2 or d: Find functions called by this function
"       3 or c: Find functions calling this function
"       4 or t: Find this text string
"       6 or e: Find this egrep pattern
"       7 or f: Find this file
"       8 or i: Find files #including this file
nmap <C-\>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :scs find d <C-R>=expand("<cword>")<CR><CR>

" Tabs
"======
:tab all
nmap <C-\>n :tab split <CR><CR>
nmap <C-\>i :tabs <CR>
nmap <C-\>= :tabnew <CR><CR>
nmap <C-\>- :tabclose <CR><CR>
nmap <End>  :tabn <CR><CR>
nmap <Home> :tabp <CR><CR>
nmap <PageUp>   :tabn <CR><CR>
nmap <PageDown> :tabp <CR><CR>

"Mapping to ALT 1 to 9. Do the following to find to key ascii to map
"set showcmd
"go the window in the insert mode then type the key u want
"if u see any value than that value can be mapped
nmap 11 :tabn 1 <CR>
nmap 22 :tabn 2 <CR>
nmap 33 :tabn 3 <CR>
nmap 44 :tabn 4 <CR>
nmap 55 :tabn 5 <CR>
nmap 66 :tabn 6 <CR>
nmap 77 :tabn 7 <CR>
nmap 88 :tabn 8 <CR>
nmap 99 :tabn 9 <CR>

"Tlist keymap
"=============
nmap <C-\>] :TlistToggle<CR><CR>

"MRU keymap
""=============
nmap <C-\>/ :MRU <CR>

"Conque term keymap
""==================
nmap <silent><C-\>1 :ConqueTermTab bash <CR>
nmap <silent><C-\>2 :ConqueTermVSplit bash <CR>

"powerline
"
"set guifont=PowerlineSymbols\ for\ Powerline
"set guifont=
set nocompatible
"set t_Co=256
"let g:Powerline_symbols = 'fancy'

" Tagbar
"nmap <slient> <F8> :TagbarToggle<CR>

" Stripping white space
" =====================
nmap <C-\>w :StripWhitespace <CR><CR>


"YouCompleteMe
"let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
"let g:ycm_global_ycm_extra_conf = 0

"Windows
"map <C-j> <C-W>j
"map <C-k> <C-W>k
"map <C-h> <C-W>h
"map <C-l> <C-W>l

"ex_mode history-scrollers
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

"let g:linuxsty_patterns = [ "/home/jacob.wang/pica8/os-dev" "/home/jacob.wang/workspace/linux_kernel" ]
let g:linuxsty_patterns = [ "/.*linux-.*/", "/.*driver.*/" ]

let g:airline_powerline_fonts = 1

" ctrlp.vim
" =====================
" 'c' - the directory of the current file.
" 'r' - the nearest ancestor that contains one of these directories or files:
" .git .hg .svn .bzr _darcs
" 'a' - like c, but only if the current working directory outside of CtrlP is
" not a direct ancestor of the directory of the current file.
" 0 or '' (empty string) - disable this feature.
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" ctrlp-funky
" =====================
"let mapleader = ","

"nnoremap <Leader>fu :CtrlPFunky<Cr>
"" narrow the list down with a word under cursor
"nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

" vim-easymotion
" =====================
"let g:EasyMotion_do_mapping = 0 " Disable default mappings
"
"" Jump to anywhere you want with minimal keystrokes, with just one key binding. 
"" `s{char}{label}`
"nmap s <Plug>(easymotion-overwin-f)
"" or
"" `s{char}{char}{label}`
"" Need one more keystroke, but on average, it may be more comfortable.
"nmap s <Plug>(easymotion-overwin-f2)
"
"" Turn on case insensitive feature
"let g:EasyMotion_smartcase = 1

" JK motions: Line motions
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k)

" matchit % '' ``
let loaded_matchit = 1
