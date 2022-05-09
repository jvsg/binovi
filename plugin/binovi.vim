"-----------------------------------------------------------------------------
" Author: Jaskaran Veer Singh <mail@jaskaran.xyz>
" License: BSD 3-Clause
"-----------------------------------------------------------------------------

" Prevents the plugin from being loaded multiple times.
if exists("g:binovi")
    finish
endif
let g:binovi = 1

command! -nargs=0 Bnv call binovi#bnv()

