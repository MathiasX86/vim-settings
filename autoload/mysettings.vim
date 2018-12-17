func! mysettings#before() abort
  "put things in here for loading before vim 
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

    "JS docs settings
    let g:jsdoc_input_description = 1
    let g:jsdoc_enable_es6 = 1
    let g:jsdoc_access_descriptions = 1
    let g:jsdoc_underscore_private = 1
    let g:jsdoc_additional_descriptions = 1
    let g:jsdoc_user_defined_tags = 1

    "Dash layer
    call SpaceVim#layers#load('tools#dash')
endf
