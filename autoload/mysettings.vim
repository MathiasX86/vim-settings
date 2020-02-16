func! mysettings#before() abort

    "put things in here for loading before vim 
    let g:jedi#completions_enabled = 1
    let g:jedi#popup_on_dot = 1
    let g:python_highlight_all = 1
    let g:ale_linters = {
    \   'mail': ['proselint'],
    \   'markdown': ['proselint'],
    \   'text': ['proselint'],
    \   }
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

    "must disable for Coc to work effectively
    let g:ale_completion_enabled = 0

    "Operator Mono settings
    hi Comment cterm=italic
    hi htmlArg cterm=italic
    hi Type    cterm=italic
    hi Comment gui=italic
    hi htmlArg gui=italic
    hi Type    gui=italic
endf

func! mysettings#after() abort
   "put things in here for loading after vim 
   
   "TSX syntax settings
    hi ReactState guifg=#C176A7
    hi ReactProps guifg=#D19A66
    hi Events ctermfg=204 guifg=#56B6C2
    hi ReduxKeywords ctermfg=204 guifg=#C678DD
    hi WebBrowser ctermfg=204 guifg=#56B6C2
    hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66

    "Python
    let g:jedi#completions_enabled = 1
    let g:jedi#popup_on_dot = 1
    let g:python_highlight_all = 1

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
    
    " NerdTree location
    let g:NERDTreeWinPos = "left"

    "working path set to root
    let g:ctrlp_working_path_mode = '0'
    
    " REMAPPING
    nnoremap <leader>ff :FzfPreviewProjectFiles<CR>
    nnoremap <leader>fg :FzfPreviewProjectGrep<CR>
    nnoremap <space>tv :Vista!!<CR>
endf
