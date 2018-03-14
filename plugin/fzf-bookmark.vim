if exists('g:fzf_bookmark_loaded')
    finish
endif

let g:fzf_bookmark_loaded = 1

function! s:ChangeDirectory(path)
    exec "cd ".a:path
endfunction

function! s:OpenAllFiles(path)
    exec "cd ".a:path
    exec "Files ".a:path
    " call feedkeys('i', 'n')
endfunction

function! s:OpenGitFiles(path)
    exec "cd ".a:path
    GitFiles
    " call feedkeys('i', 'n')
endfunction

function! ListFavorites(path)
    call fzf#run({
        \   'source': 'cat $HOME/.fzf_favorites',
        \   'sink': function(a:path)
        \ })
endfunction

if !exists('g:bookmarkvim_mappings')
    nnoremap <silent> <Leader>fg :call ListFavorites('s:OpenGitFiles')<cr>
    nnoremap <silent> <Leader>fa :call ListFavorites('s:OpenAllFiles')<cr>
    nnoremap <silent> <Leader>fp :call ListFavorites('s:ChangeDirectory')<cr>
endif
