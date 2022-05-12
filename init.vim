let g:coc_node_path = '/usr/local/bin/node'
set clipboard+=unnamedplus
call plug#begin('~/.vim/plugged')
   Plug 'preservim/nerdtree'
   Plug 'neoclide/coc.nvim', {'branch': 'release'}
   Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
   Plug 'sheerun/vim-polyglot'
   Plug '42Paris/42header'
   Plug 'vim-syntastic/syntastic'
   Plug 'vim-scripts/vim-auto-save'
   Plug 'frazrepo/vim-rainbow'
   Plug 'altercation/vim-colors-solarized'
   Plug 'itchyny/lightline.vim'
   Plug 'preservim/nerdcommenter'
   Plug 'tpope/vim-surround'
   Plug 'tpope/vim-fugitive'

call plug#end()
" Space duck settings
syntax enable
set background=dark
nmap <F8> :TagbarToggle<CR>
let g:solarized_termcolors=256
colorscheme solarized
" General settings
set number
syntax on
set mouse=a
map <ScrollWheelDown> j
map <ScrollWheelUp> k
let g:user42 = "yakhoudr"
let g:mail42 = "yakhoudr@student.1337.ma"
" Nerd tree toggle
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArroCollapsible = '▾'
nnoremap <C-t> :NERDTreeToggle<CR>
" Coc settings
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>

nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>

nmap <leader>do <Plug>(coc-codeaction)

nmap <leader>rn <Plug>(coc-rename)
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-json',
  \ 'coc-css',
  \  'coc-eslint',
  \  'coc-prettier'
  \ ]

" AutoSaveTogglew
" rainbox brackets
au FileType c,cpp,objc,objcpp,cs,java,js call rainbow#load()
if !has('gui_running')
  set t_Co=256
endif
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
filetype plugin on
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
" Autosave
autocmd TextChanged,TextChangedI *
    \ if &buftype ==# '' || &buftype == 'acwrite' |
    \     silent write |
    \ endif
