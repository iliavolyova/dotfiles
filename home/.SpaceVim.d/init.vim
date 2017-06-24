set conceallevel=1
set concealcursor=""
set foldmethod=syntax
set nowrap

call SpaceVim#layers#load('lang#javascript')
call SpaceVim#layers#load('edit')
call SpaceVim#layers#load('incsearch')

let g:deoplete#enable_at_startup = 1

let g:javascript_plugin_jsdoc = 1
let g:javascript_conceal = 2
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"

let g:jsx_ext_required = 0
let g:indentLine_faster = 1
let g:indentLine_setColors = 0
let g:indentLine_char = '┆'
let g:indentLine_color_term = 239

let g:used_javascript_libs = 'requirejs,underscore,react'

let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_exe = '/home/bojan/code/workspaces/kodbiro/bptool2/node_modules/.bin/eslint'

let g:spacevim_wildignore = '*/tmp/*,*.so,*.swp,*.zip,*.class,tags,*.jpg,*.ttf,*.TTF,*.png,*/target/*,.git,.svn,.hg,.DS_Store,*/node_modules/*'

let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts =
  \ '-i --vimgrep --hidden --ignore ' .
  \ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
let g:unite_source_grep_recursive_opt = ''
let g:unite_source_rec_async_command = ['ag --nocolor --nogroup --ignore ".hg" --ignore ".svn" --ignore ".git" --ignore ".bzr" --hidden -g ""']

let g:tern#filetypes = [
  \ 'jsx',
  \ 'javascript.jsx',
  \ ]

let g:gita#suppress_warning = 1

" neomake
nmap <Leader><Space>o :lopen<CR>      " open location window
nmap <Leader><Space>c :lclose<CR>     " close location window
nmap <Leader><Space>, :ll<CR>         " go to current error/warning
nmap <Leader><Space>n :lnext<CR>      " next error/warning
nmap <Leader><Space>p :lprev<CR>      " previous error/warning

nnoremap ZB q::call ZF_FoldBlockTemplate()<cr>
nnoremap ZF :ZFFoldBlock //<left>

" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()<Paste>
autocmd BufWritePost * Neomake
autocmd FileType html,css,javascript.jsx,js EmmetInstall

let g:spacevim_custom_plugins = [
  \ ['mxw/vim-jsx', {'on_ft': 'javascript'}],
  \ ['itchyny/vim-cursorword'],
  \ ]

