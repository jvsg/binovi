"-----------------------------------------------------------------------------
" Author: Jaskaran Veer Singh <mail@jaskaran.xyz>
" License: BSD 3-Clause
"-----------------------------------------------------------------------------

" we would want to truncate the newline char
function! System(cmd)
  return system(a:cmd)[:-2]
endfunction

function! binovi#bnv()
    let start_pos = line("'<'")
    let end_pos = line("'>'")
    let repo_path = System("git rev-parse --show-toplevel")
    let file_path = expand("%:p")
    let file_path_rel = file_path[len(repo_path):]

    let git_branch = System("git branch --show-current")

    let git_remote_url = System("git remote -v | head -n 1 | awk '{print \$2}'")
    let git_remote_url = split(git_remote_url, "@")[1]
    let git_remote_url = substitute(git_remote_url, ":", "/", "")
    let git_remote_url = substitute(git_remote_url, ".git", "", "")

    let url = git_remote_url . "/blob/" . git_branch . file_path_rel

    let url = url . '#' . start_pos . '-#' . end_pos
    " check if we are running on darwin
    if system("uname -s") == "Darwin"
        let x = system("open " . url)
    elseif system("uname -s") == "Linux"
        let x = system("xdg-open " . url)
    endif
endfunction
