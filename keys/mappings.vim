"definicao de tecla de acionamento Leader
let mapleader="\<space>"
"Aciona Which-key
nmap <Leader><space> :Which-key<CR> 


" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" EASY CAPS - Shift + u = upper case, u = lower case
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" Save and exit easier way
inoremap <C-s> <esc>:w<cr>                 " save files
nnoremap <C-s> :w<cr>
inoremap <C-d> <esc>:wq!<cr>               " save and exit
nnoremap <C-d> :wq!<cr>
inoremap <C-q> <esc>:exit<cr>               " quit discarding changes
nnoremap <C-q> :exit<cr>

" Ignorar maiusculas e minusculas
cab W  w
cab Wq wq
cab wQ wq
cab WQ wq
cab Q  q

"inoremap ;; <Esc>                          "artificio pra agilizar o modo 

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Open nerdTree with keyshortcut
let mapleader = " "
nmap <leader>ne :NERDTree<cr>

" TABS
noremap <Tab> :tabnext<CR>
noremap <S-Tab> :tabprevious<CR>
nnoremap <silent><C-t> :tabnew<CR>                     "Tab: alterna para a proxima aba aberta
noremap <C-e> :tabclose<CR>

"Create/Del a tab
nmap te :tabe<CR>
nmap td :bd<CR>

"Navigation between buffers
nmap ty :bn<CR>
nmap tr :bp<CR>

"Create splits and others
nmap th :split<CR>
nmap tv :split<CR>

"close splts and others
nmap tt :q<CR> 


" No more Arrow keys, deal with it
"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>
"noremap <S>k <NOP>

tnoremap ;; <C-\><C-n>

" Opens a new terminal in vertical split
noremap <Leader>t :vsplit term://zsh<CR>

" Comment lines
noremap <Leader>cc

"Search for all ocourrences of the phrase that you write
nnoremap <C-f> :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ") })<CR>

" CTRL + C now yank the selected
vmap <C-c> "+y

" Clears the vim highlighing
noremap <C-l> :noh<CR>

" Changes all ocourrences for the text that you have typed
nnoremap <Leader>r :%s///g<Left><Left>
nnoremap <Leader>rc :%s///gc<Left><Left><Left>

xnoremap <Leader>r :s///g<Left><Left>
xnoremap <Leader>rc :s///gc<Left><Left><Left>

vnoremap * y/\V<C-R>=escape(@",'/\')<CR><CR>

"Definição de tecla padrao de acionamento
let mapleader="\<space>"

"Editar o diretório do arquivo init.vim
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

"Debugging keys
nnoremap <Leader>dd :call vimspector#Launch()<CR>
nnoremap <Leader>de :call vimspector#Reset()<CR>
nnoremap <Leader>dc :call vimspector#Continue()<CR>

nnoremap <Leader>dt :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>dT :call vimspector#ClearBreakpoints()<CR>

nmap <Leader>dk <Plug>VimspectorRestart
nmap <Leader>dh <Plug>VimspectorStepOut
nmap <Leader>dl <Plug>VimspectorStepInto
nmap <Leader>dj <Plug>VimspectorStepOver

" Keys for completion
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <C-e>     compe#close('<C-e>')

nmap <Leader>rr :NERDTreeFocus<cr>R<c-w><c-p>

