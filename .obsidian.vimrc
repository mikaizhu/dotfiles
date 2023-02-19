" ref: https://gist.github.com/jiyee/cfa8dc2f37359004b34820543f691db3
" ref: https://sspai.com/post/78030
" let mapleader=;
" 要使用前缀按键','就必须unmap下
unmap ,
nmap j gj
nmap k gk

nmap J 5j
nmap K 5k
nmap L 5l
nmap H 5h

nmap <Esc> :nohl

nmap [ {
nmap ] }

set clipboard=unnamed


exmap q obcommand workspace:close

exmap done obcommand editor:toggle-checklist-status
nmap ,x :done

exmap code obcommand editor:toggle-code
nmap ,c :code

