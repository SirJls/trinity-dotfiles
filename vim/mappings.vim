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

nnoremap <silent> <leader>b :call FZFOpen(':Buffers')<CR>
nnoremap <silent> <leader>c :call FZFOpen(':Commands')<CR>
nnoremap <silent> <leader>h :call FZFOpen(':Helptags')<CR>
nnoremap <silent> <leader>t :call FZFOpen(':BTags')<CR>
nnoremap <silent> <leader>T :call FZFOpen(':Tags')<CR>
nnoremap <silent> <leader>l :call FZFOpen(':BLines')<CR>
nnoremap <silent> <leader>r :call FZFOpen(':History')<CR> 
nnoremap <silent> <leader>f :call FZFOpen(':Files')<CR>

imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   { 'dir': systemlist('git rev-parse --show-toplevel')[0] }, <bang>0)
