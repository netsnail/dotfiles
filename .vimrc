syntax on
set autoindent
set tags=./tags,../tags,../../tags,../../../tags,../../../../tags
set nowrap
set linespace=4
"set expandtab
set tabstop=4
set shiftwidth=4

map # I# <esc><Down>

"map  ,f ofor (i=0;; i++) {<ESC>o}<ESC>kI<ESC>f;a<SPACE>
"map! ,f for (i;; i++) {<ESC>o}<ESC>kI<ESC>f;a<SPACE>
"map  ,w owhile () {<ESC>o}<ESC>kI<ESC>f(a
"map! ,w while () {<ESC>o}<ESC>kI<ESC>f(a
"map  ,i oif () {<ESC>o}<ESC>kf(a
"map! ,i if () {<ESC>o}<ESC>kf(a
"map  ,s oswitch () {<ESC>ocase:<CR>break;<CR>case:<CR>break;<CR>default:<CR>}<ESC>6kf(a
"map! ,s switch () {<ESC>ocase:<CR>break;<CR>case:<CR>break;<CR>default:<CR>}<ESC>6kf(a
"map  ,m 0i#include <stdio.h><CR><CR>int main(int argc, char **argv)<CR>{<CR><CR><CR>}<Up><TAB>return 0;<Up><TAB>

" Cleanup
:function Clean_up()
:endfunction

