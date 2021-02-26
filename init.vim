source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/qtconsole.vim

call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'norcalli/nvim-colorizer.lua'
Plug 'ChristianChiarulli/far.vim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'preservim/nerdtree'
Plug 'bfredl/nvim-ipy'
Plug 'unblevable/quick-scope'
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'airblade/vim-rooter'
Plug 'mhinz/vim-signify'
Plug 'justinmk/vim-sneak'
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-startify'
Plug 'liuchengxu/vim-which-key'
Plug 'lervag/vimtex'
call plug#end()

" Plugin configs
source $HOME/.config/nvim/coc_config.vim
source $HOME/.config/nvim/fzf.vim
source $HOME/.config/nvim/sneak.vim

" Airline
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#right_sep = ''
"let g:airline#extensions#tabline#right_alt_sep = ''
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
let g:airline_powerline_fonts = 1
let g:airline_theme = 'gruvbox'
"let g:airline_section_a=''

" Colorizer
lua require'plug-colorizer'

" Far
let g:far#source='rgnvim'
" let g:far#source='rg'
" let g:far#source='vimgrep'
" let g:far#source='ag'
set lazyredraw            " improve scrolling performance when navigating through large results
let g:far#window_width=60
" Use %:p with buffer option only
let g:far#file_mask_favorites=['%:p', '**/*.*', '**/*.js', '**/*.py', '**/*.java', '**/*.css', '**/*.html', '**/*.vim', '**/*.cpp', '**/*.c', '**/*.h', ]
let g:far#window_min_content_width=30 
let g:far#window_min_content_width=30


" Julia
let g:latex_to_unicode_tab = 0
let g:latex_to_unicode_auto = 1

" QuickScope
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#afff5f' gui=underline ctermfg=81 cterm=underline
let g:qs_max_chars=150

" Signify
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1

" Jump though hunks
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
nmap <leader>gJ 9999<leader>gJ
nmap <leader>gK 9999<leader>gk

" Vimtex 
let g:vimtex_compiler_progname = 'nvr'
let g:tex_flavor = 'latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0

colorscheme gruvbox
