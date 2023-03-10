syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			        " Show the cursor position all the time
set cmdheight=1                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " Insert 2 spaces for a tab
set softtabstop=4                       " Show existing tab with 4 spaces width
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set relativenumber
set cursorline                          " Enable highlighting of the current line
set cursorcolumn
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode
set clipboard+=unnamed
set clipboard+=unnamedplus
let g:airline_theme='violet'
set scrolloff=8                         " Minimum number of lines to keep above and below the cursor

color desert
"hi CursorLine cterm=NONE ctermbg=8 ctermfg=NONE
hi CursorLine term=bold cterm=bold guibg=Grey40
highlight CursorLineNR ctermbg=red
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

let g:markdown_fenced_languages = [
      \ 'vim',
      \ 'help'
      \]
let NERDTreeShowHidden=1
