:%s/\(\d\+\)\ze \(\d\+\)/\1-\2/g
:g/$/normal $daw
:%s/\d\+-\d\+/\=eval(submatch(0))/g
:g/[04-9]/d _
:%s/-\d\+/0/g
:%s/[1-3]/1/g
:%s/ //g
:g/10\|01/d
:%s/.*/+1
:normal ggVGJ
:%s/.*/\=eval(submatch(0))
