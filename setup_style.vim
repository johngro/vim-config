function! SetupStyleRules()
    let l:fname = expand('%:p')
    let l:highlight_line_width = 1

    if match(l:fname, '^/.*/fuchsia/zircon/.*[^/]$') == 0
        set tw=100
        set sw=4
        set ts=4
        set expandtab
    elseif match(l:fname, '^/.*/fuchsia/garnet/.*[^/]$') == 0
        set tw=80
        set sw=2
        set ts=2
        set expandtab
    elseif match(l:fname, '^/.*/fuchsia.*[^/]$') == 0
        set tw=100
        set sw=2
        set ts=2
        set expandtab
    else
        set tw=100
        set sw=4
        set ts=4
        set expandtab
        let l:highlight_line_width = 0
    endif

    if (l:highlight_line_width) 
        call SetupLineWidthHighlighting()
        call SetupTrailingWhitespaceHighlighting()
    endif
endfunction

call SetupStyleRules()
