func! mysettings#before() abort

    "put things in here for loading before vim 

    "C# stuff
    let g:OmniSharp_popup = 1

    "Python
    let g:python_host_prog = '/usr/local/bin/python'
    let g:python3_host_prog = '/usr/local/opt/python@3.8/bin/python3'
    let g:jedi#completions_enabled = 1
    let g:jedi#popup_on_dot = 1
    let g:python_highlight_all = 1

    " let g:ale_linters = {
    " \   'mail': ['proselint'],
    " \   'markdown': ['proselint'],
    " \   'text': ['proselint'],
    " \   o
    "
    " let g:ale_linter_aliases = {'tsx': 'css'}

    " automatically begin linting
    let g:ale_lint_on_enter = 1
    " Status line
    let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
    " Message format
    let g:ale_echo_msg_error_str = 'E'
    let g:ale_echo_msg_warning_str = 'W'
    let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
    let g:ale_sign_error = '>>'
    let g:ale_sign_warning = '--'

    "use coc as autocomplete layer
    let g:spacevim_autocomplete_method = 'coc'
    let g:blamer_enabled = 1

    "must disable for Coc to work effectively
    " let g:ale_completion_enabled = 0

    "Operator Mono settings
    hi Comment cterm=italic
    hi htmlArg cterm=italic
    hi Type    cterm=italic
    hi Comment gui=italic
    hi htmlArg gui=italic
    hi Type    gui=italic

    " set filetypes as typescriptreact
    autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

    " Theme
    let g:airline_theme='oceanicnext'

    " Or if you have Neovim >= 0.1.5
    if (has("termguicolors"))
     set termguicolors
    endif

    " Theme
    syntax enable
    colorscheme OceanicNext

endf

func! mysettings#after() abort
   "put things in here for loading after vim 
   
   " dark red
    hi tsxTagName guifg=#E06C75

    " orange
    hi tsxCloseString guifg=#F99575
    hi tsxCloseTag guifg=#F99575
    hi tsxCloseTagName guifg=#F99575
    hi tsxAttributeBraces guifg=#F99575
    hi tsxEqual guifg=#F99575

    " yellow
    hi tsxAttrib guifg=#F8BD7F cterm=italic

    " light-grey
    hi tsxTypeBraces guifg=#999999

    " dark-grey
    hi tsxTypes guifg=#666666

   "TSX syntax settings

   hi ReactState guifg=#C176A7
   hi ReactProps guifg=#D19A66
   hi ApolloGraphQL guifg=#CB886B
   hi Events ctermfg=204 guifg=#56B6C2
   hi ReduxKeywords ctermfg=204 guifg=#C678DD
   hi ReduxHooksKeywords ctermfg=204 guifg=#C176A7
   hi WebBrowser ctermfg=204 guifg=#56B6C2
   hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66

    "Auto reload
    set autoread
    au CursorHold * checktime 

    "JS docs settings
    let g:jsdoc_input_description       = 1
    let g:jsdoc_enable_es6              = 1
    let g:jsdoc_access_descriptions     = 1
    let g:jsdoc_underscore_private      = 1
    let g:jsdoc_additional_descriptions = 1
    let g:jsdoc_user_defined_tags       = 1

    "enable autocomplete for python
    " autocmd FileType python setlocal omnifunc=jedi#completions
    "Emmet settings
    let g:user_emmet_settings = {
    \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
    \}

    "Markdown tagbar support
    let g:tagbar_type_markdown = {
            \ 'ctagsbin'  : 'mdctags',
            \ 'ctagsargs' : '',
            \ 'kinds'     : [
            \     'a:h1:0:0',
            \     'b:h2:0:0',
            \     'c:h3:0:0',
            \     'd:h4:0:0',
            \     'e:h5:0:0',
            \     'f:h6:0:0',
            \ ],
            \ 'sro'        : '::',
            \ 'kind2scope' : {
            \     'a' : 'h1',
            \     'b' : 'h2',
            \     'c' : 'h3',
            \     'd' : 'h4',
            \     'e' : 'h5',
            \     'f' : 'h6',
            \ },
            \ 'scope2kind' : {
            \     'h1' : 'a',
            \     'h2' : 'b',
            \     'h3' : 'c',
            \     'h4' : 'd',
            \     'h5' : 'e',
            \     'h6' : 'f',
            \}
            \}
    
    " NerdTree location
    let g:NERDTreeWinPos = "left"

    "working path set to root
    let g:ctrlp_working_path_mode = '0'
    
    " REMAPPING
    nnoremap <leader>ff :CocCommand fzf-preview.ProjectFiles<CR>
    nnoremap <leader>fg :CocCommand fzf-preview.ProjectGrep<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>
    nnoremap <leader>fr :CocCommand fzf-preview.CocReferences<CR>
    
    " fzf preview
    nnoremap <leader>fd :TSDef<CR>
    nnoremap <leader>fi :CocCommand fzf-preview.CocImplementations<CR>
    nnoremap <leader>ft :CocCommand fzf-preview.CocCurrentDiagnostics<CR>
    nnoremap <space>tv :Vista!!<CR>

    " VIM clap
    nnoremap <leader>c :Clap<CR>

endf
