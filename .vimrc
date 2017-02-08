set nocompatible
set number
filetype off
set encoding=utf-8
set laststatus=2
set spell
set complete+=kspell
execute pathogen#infect()

" Enable syntax highlighting
syntax on

" Solarized settings
set t_Co=256
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
let g:airline_theme = 'badwolf'

" Nerd Tree
"map <C-n> :NERDTreeToggle<CR>

" Klen/python mode
" Activate rope
" " Keys:
" " K             Show python docs
" " <Ctrl-Space>  Rope autocomplete
" " <Ctrl-c>g     Rope goto definition
" " <Ctrl-c>d     Rope show documentation
" " <Ctrl-c>f     Rope find occurrences
" " <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" " [[            Jump on previous class or function (normal, visual, operator
" modes)
" " ]]            Jump on next class or function (normal, visual, operator
" modes)
" " [M            Jump on previous class or method (normal, visual, operator
" modes)
" " ]M            Jump on next class or method (normal, visual, operator modes)
" let g:pymode_rope = 1
"
"" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
"let g:pymode_lint_checker = "pyflakes,pep8"
"" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
" let g:pymode_virtualenv = 1
"
" " Enable breakpoints plugin
" let g:pymode_breakpoint = 1
" let g:pymode_breakpoint_bind = '<leader>b'
"
"" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0
			
" Splits mapping
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

" Code folding
nnoremap <space> za


"Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntasic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pyflakes']

" Solarized Settings
let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

"Set clipboard to system
set clipboard=unnamedplus

set backspace=indent,eol,start

"Django Editing 
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

"Ultisnips
let g:UltisnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger       = "<c-r>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>" 
let g:UltiSnipsBackwardTrigger  = "<c-k>"
let g:UltiSnipsSnippetDirecotries = ['~/.vim/bundle/vim-snippets/snippets']
let g:UltiSnipsSnippetsDir = '~/.vim/my_snippets'
let g:UltiSnipsEditSplit = 'horizontal'


"YCM
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
"let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
"let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
"let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
"let g:ycm_complete_in_comments = 1 " Completion in comments
"let g:ycm_complete_in_strings = 1 " Completion in string


inoremap <c-x><c-k> <c-x><c-k>


"
"Vim Project Settings
call project#rc("~/Documents/Programming")

Project 'douche_bag'
Project 'fuson'

filetype plugin indent on
