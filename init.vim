call plug#begin('~/.vim/plugged')
   Plug 'preservim/nerdtree'
   Plug 'neoclide/coc.nvim', {'branch': 'release'}
   Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
   Plug 'sheerun/vim-polyglot'
   Plug '42Paris/42header'
   Plug 'vim-syntastic/syntastic'

call plug#end()
" Space duck settings
if exists('+termguicolors')
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
    endif

   colorscheme spaceduck
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
let g:NERDTreeDirArrowCollapsible = '▾'
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

