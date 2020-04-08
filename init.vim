" This is my neovim customization file!

" List of plugins to be installed
call plug#begin()

" Autocomplete engine
Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'shougo/echodoc.vim'
Plug 'shougo/neco-vim'
Plug 'zchee/deoplete-clang'
Plug 'zchee/deoplete-zsh'
"Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
"Plug 'autozimu/LanguageClient-neovim', {
    "\ 'branch': 'next',
    "\ 'do': 'bash install.sh',
    "\ }
Plug 'dense-analysis/ale'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Better file browsing
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Automated commenting
Plug 'preservim/nerdcommenter'

" Smart number relative numbering
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" A nicer looking theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Git integration
Plug 'tpope/vim-fugitive'

" Automatically create bracket pairs
Plug 'jiangmiao/auto-pairs'

call plug#end()

" Set my default colorscheme
set termguicolors
colorscheme NeoSolarized
set background=dark
set cursorline

" Enable Deoplete autocompletion
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_complete_start_length = 1
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
let g:UltiSnipsExpandTrigger="<C-j>"
call deoplete#custom#source('file', 'rank', 1001)
call deoplete#custom#source('ultisnips', 'rank', 1000)
call deoplete#custom#source('buffer', 'rank', 10)
call deoplete#custom#source('around', 'rank', 1)

let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'popup'

set signcolumn=yes

" mouse support
set mouse=a

" Enable line numbers as I like them
set number relativenumber

" Uses the system clipboard
set clipboard=unnamed

" Sets 4-space tabs
set tabstop=4
set expandtab shiftwidth=4

" Map the leader key to ","
let mapleader=","
nnoremap <leader><leader> :b#<CR>

" Sets my bottom bar theme
set noshowmode
let g:airline_theme='solarized'
let g:airline#extensions#tabline#buffer_min_count =2
let g:airline#extensions#tabline#enabled = 1

" Preserves space above and below the cursor
set scrolloff=5
