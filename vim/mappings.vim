no / /\v

cmap w!! w !sudo tee % > /dev/null
noremap <silent> <Space> :silent noh<Bar>echo<CR>

vnoremap < <gv
vnoremap > >gv

nnoremap j jzz
nnoremap k kzz

command! -nargs=+ MapToggle call MapToggle(<f-args>)
MapToggle <F4> number
MapToggle <F5> spell
MapToggle <F6> paste
MapToggle <F7> hlsearch
MapToggle <F8> wrap

map <silent> <Leader>e :Errors<CR>
map <Leader>s :SyntasticToggleMode<CR>

map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

autocmd FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
autocmd FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>
autocmd FileType haskell nnoremap <buffer> <silent> <F3> :HdevtoolsInfo<CR>

map <Leader>f :FZF<CR>
