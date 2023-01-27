source ~/.config/nvim/settings.vim
source ~/.config/nvim/keys/mappings.vim
source ~/.config/nvim/vim-plug/plugins.vim

luafile ~/.config/nvim/lua/plugins/compe-config.lua
source ~/.config/nvim/plug-config/lsp-config.vim
source ~/.config/nvim/plug-config/telescope.vim

" Config files:
luafile ~/.config/nvim/lua/lsp/bash-lsp.lua
luafile ~/.config/nvim/lua/lsp/docker-lsp.lua
luafile ~/.config/nvim/lua/lsp/eslint-lsp.lua
luafile ~/.config/nvim/lua/lsp/go-lsp.lua
luafile ~/.config/nvim/lua/lsp/java-lsp.lua
luafile ~/.config/nvim/lua/lsp/json-lsp.lua
luafile ~/.config/nvim/lua/lsp/python-lsp.lua
luafile ~/.config/nvim/lua/lsp/tsserver-lsp.lua
luafile ~/.config/nvim/lua/lsp/yaml-lsp.lua

" AIRLINE CUSTOMIZATION
execute pathogen#infect()
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Config nerdtree git
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeGitStatusShowIgnored = 1 " a heavy feature may cost much more time. default: 0

:hi TabLineFill ctermfg=LightCyan ctermbg=LightCyan
:hi TabLine ctermfg=DarkCyan ctermbg=LightCyan
:hi TabLineSel ctermfg=black ctermbg=DarkCyan

let g:is_nvim = has('nvim')
let g:is_vim8 = v:version >= 800 ? 1 : 0

" For 'Yggdroot/indentLine' and 'lukas-reineke/indent-blankline.nvim' "
let g:indentLine_fileTypeExclude = ['dashboard']
" For 'ntpeters/vim-better-whitespace' "
let g:better_whitespace_filetypes_blacklist = ['dashboard']

augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup END


augroup cursorline
  au!
  au ColorScheme * hi clear CursorLine
               \ | hi link CursorLine CursorColumn
augroup END

" Coc Snippets """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:coc_global_extensions = [ 'coc-snippets','coc-explorer', ]

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \t<SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" Coc Explorer """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.vim',
\   },
\   'cocConfig': {
\      'root-uri': '~/.config/coc',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'tab:$': {
\     'position': 'tab:$',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   },
\   'buffer': {
\     'sources': [{'name': 'buffer', 'expand': v:true}]
\   },
\ }


"For Windows WSL, try this g:clipboard definition:
"    let g:clipboard = {
                "\   'name': 'WslClipboard',
                "\   'copy': {
                "\      '+': 'clip.exe',
                "\      '*': 'clip.exe',
                "\    },
                "\   'paste': {
                "\      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
                "\      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
                "\   },
                "\   'cache_enabled': 0,
                "\ }

" let g:clipboard = {
          "\   'name': 'myClipboard',
          "\   'copy': {
          "\      '+': ['tmux', 'load-buffer', '-'],
          "\      '*': ['tmux', 'load-buffer', '-'],
          "\    },
          "\   'paste': {
          "\      '+': ['tmux', 'save-buffer', '-'],
          "\      '*': ['tmux', 'save-buffer', '-'],
          "\   },
          "\   'cache_enabled': 1,
          "\ }



au BufNewFile,BufRead *.[pP][rR][wWgGxX] set filetype=advpl
