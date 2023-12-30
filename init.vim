" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do':'./install --all'}
Plug 'junegunn/fzf.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'lepture/vim-jinja'
Plug 'stephpy/vim-yaml'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'preservim/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'habamax/vim-asciidoctor'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'marioortizmanero/adoc-pdf-live.nvim'
Plug 'hashivim/vim-terraform'
Plug 'shaunsingh/solarized.nvim'
Plug 'projekt0n/github-nvim-theme'
Plug 'rebelot/kanagawa.nvim'
"Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
"Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
"Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

function TogglePasteOptions()
    set rnu!
    set number!
    set paste
    IndentLinesToggle
endfunction

map <C-o> :NERDTreeToggle<CR>
map <C-i> :IndentLinesToggle<CR>
nnoremap <leader>p :call TogglePasteOptions()<cr>
nnoremap <leader>f :Files --hidden<cr>

set mouse=
set tabstop=4
set shiftwidth=4
set expandtab
set autoread
set hlsearch
set number
set rnu
set textwidth=80
au CursorHold * checktime
let g:lightline = {
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'gitbranch#name'
    \ },
    \ }
let NERDTreeShowHidden = 1
let g:copilot_filetypes = {'yaml': v:true}

autocmd BufNewFile,BufRead *.jf set syntax=groovy
let g:solarized_italic_comments = v:true
let g:solarized_italic_keywords = v:true
let g:solarized_italic_functions = v:true
let g:solarized_italic_variables = v:false
let g:solarized_contrast = v:true
let g:solarized_borders = v:false
let g:solarized_disable_background = v:false
colorscheme gruvbox
set termguicolors
" toggle background light/dark
nnoremap <expr>yob &background == 'light' ? ':set bg=dark<cr>' : ':set bg=light<cr>'
