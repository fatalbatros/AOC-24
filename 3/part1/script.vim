:%s/\(mul(\d\+,\d\+)\)/\1\r/g
:v/mul(\d\+,\d\+)/d
:%s/.*mul(\(\d\+,\d\+\))/\1
:%s/,/*
:%s/.*/\=eval(submatch(0))
:%s/^/+
:normal ggVGJ
:s/.*/\=eval(submatch(0))
