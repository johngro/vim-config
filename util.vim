function! InGitRepo()
    let l:in_git_repo = 0
    let l:tmp = expand("%:p")

    while 1
        if isdirectory(l:tmp . "/.git")
            let l:in_git_repo = 1
            break
        endif

        let l:ndx = strridx(l:tmp, "/")
        if (l:ndx < 0)
            break
        endif

        let l:tmp = strpart(l:tmp, 0, l:ndx)
    endwhile

    return l:in_git_repo
endfunction

function! SetupLineWidthHighlighting()
    if exists('w:line_width_highlight')
      return
    endif

    let l:match_string = '\%>' . &textwidth . 'v.\+'
    let w:line_width_highlight = matchadd('ErrorMsg', l:match_string, -1)
endfunction

function! SetupTrailingWhitespaceHighlighting()
    if exists('w:trailing_ws_highlight')
      return
    endif

    let l:match_string = '\s\+$'
    let w:trailing_ws_highlight = matchadd('ErrorMsg', l:match_string, -1)
endfunction

function Contains(list, val)
    for l:i in a:list
        if a:val == l:i
            return 1
        endif
    endfor
    return 0
endfunction

let s:cf_ext = [ 'gn', 'cc', 'cpp', 'h' ]
function! ShouldClangFormat()
    if !Contains(s:cf_ext, expand('%:e'))
        return 0
    endif

    let l:fname = expand('%:p')
    if match(l:fname, '^/.*/fuchsia/garnet/.*[^/]$') == 0
        return 1
    endif

    return 0
endfunction
