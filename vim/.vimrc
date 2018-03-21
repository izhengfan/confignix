syntax on

set number

"set cursorline

set hlsearch

set smartindent

set ruler

set shiftwidth=4

" our <leader> will be the space key
let mapleader=" "

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'godlygeek/tabular'

Plugin 'scrooloose/nerdtree'

Plugin 'python-mode/python-mode'

Plugin 'gerw/vim-latex-suite'

Plugin 'wannesm/wmgraphviz.vim'

Plugin 'plasticboy/vim-markdown'

" Plugin 'flazz/vim-colorschemes'

Plugin 'majutsushi/tagbar'

Plugin 'Rip-Rip/clang_complete'

Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'tpope/vim-surround'

" Plugin 'davidhalter/jedi-vim'

" Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"
"filetype plugin on
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


filetype plugin on
au BufReadPost *.MD set filetype=markdown
let g:vim_markdown_no_extensions_in_markdown = 1

" indentation for c/cpp
set cindent
set cinoptions+=L0
set cinoptions+=g0


map <C-n> :NERDTreeToggle<CR>

let g:Tex_UseMakefile = 0
let g:Tex_CompileRule_pdf = 'latexmk -f -pdf -src-specials --synctex=1 --interaction=nonstopmode $*'
let g:Tex_ViewRule_pdf = 'evince'
let g:Tex_DefaultTargetFormat = 'pdf'

let g:pymode_python = 'python3'

" path to directory where library can be found
let g:clang_library_path = $HOME.'/.local/clang_llvm_5.0.1/lib'
let g:clang_user_options = '-std=c++11'

" cpp highlight enhance
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
"let g:cpp_experimental_template_highlight = 1


" Ctrl-p to paste from system clipboard
noremap <C-p> "+p

" Ctrl-y to copy to system clipboard
noremap <C-y> "+y

" <leader>w for windows operation
nnoremap <leader>w <C-W>

nmap <F8> :TagbarToggle<CR>

cabbrev rd redraw!

" colorscheme lucid

" Enhance the vertical movement over wrapped text:
noremap <Up> g<Up>
noremap <Down> g<Down>
inoremap <Up> <Esc>g<Up>a
inoremap <Down> <Esc>g<Down>a

" mannual folding 
" :set foldmethod=manual
let g:vim_markdown_folding_disabled = 1

" enable matchit plugin
runtime macros/matchit.vim
