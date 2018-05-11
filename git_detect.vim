let s:clangformat = '~/turquoise/fuchsia/buildtools/linux-x64/clang/bin/clang-format'

if exists("b:git_hooks_added")
  finish
endif

if expand('%:p') =~ '/.git/'
    finish
endif

function! AddGitHooks()
    let l:cmds = []
    let l:cmds += ['cd %:p:h']
    if ShouldClangFormat()
        let l:cmds += [s:clangformat . ' -style=file -fallback-style=Chromium -sort-includes -i %:t']
    endif
    let l:cmds += ['git add %:t']

    let l:cmd = ''
    let l:prefix = '!('
    for l:c in cmds
        let l:cmd .= l:prefix
        let l:cmd .= l:c
        let l:prefix = ' ; '
    endfor
    let l:cmd .= ')'

    aug git_autocmds
        execute "au BufWritePost <buffer> execute '" . l:cmd . "'"
        if ShouldClangFormat()
            au BufWritePost <buffer> :e
        endif
    aug end
endfunction

if InGitRepo()
    call AddGitHooks()
endif
let b:git_hooks_added = 1
