set foldmethod=syntax
set conceallevel=1
set nowrap

let g:python_host_prog  = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python'

call SpaceVim#layers#load('lang#javascript')
call SpaceVim#layers#load('edit')
call SpaceVim#layers#load('incsearch')

let g:deoplete#enable_at_startup = 1
let g:javascript_plugin_jsdoc = 1

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
let g:indentLine_color_term = 239

let g:used_javascript_libs = 'requirejs,underscore,react'

let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_exe = '/home/bojan/code/workspaces/kodbiro/bptool2/node_modules/.bin/eslint'

let g:spacevim_wildignore = '*/tmp/*,*.so,*.swp,*.zip,*.class,tags,*.jpg,*.ttf,*.TTF,*.png,*/target/*,.git,.svn,.hg,.DS_Store,*/node_modules/*'

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
  \ ['neoclide/vim-jsx-improve', {'on_ft': 'javascript'}],
  \ ['itchyny/vim-cursorword'],
  \ ]

"call denite#custom#option('default', 'prompt', '> ')
"call denite#custom#option('default', 'empty', 0)
"call denite#custom#option('default', 'auto_resize', 1)

"call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
  "\ [ '.git/', 'static/', 'node_modules/', '.ropeproject/', '__pycache__/',
  "\   'images/', '*.min.*', 'bundle.js', 'img/', 'fonts/'])

"" Change file_rec command.
"call denite#custom#var('file_rec', 'command',
  "\ ['ag', '--depth', '10', '--follow', '--nocolor', '--nogroup', '-g', ''])

"" grep source ag setup
"call denite#custom#var('grep', 'command', ['ag'])
"call denite#custom#var('grep', 'default_opts',
"\ ['-i', '--vimgrep'])
"call denite#custom#var('grep', 'recursive_opts', [])
"call denite#custom#var('grep', 'pattern_opt', [])
"call denite#custom#var('grep', 'separator', ['--'])
"call denite#custom#var('grep', 'final_opts', [])

