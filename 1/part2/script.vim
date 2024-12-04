:%s/^/0
:%s/\s\+/\r
:%sort
:%s/$/ 
:let @c=""
:v/^0/normal $v0"Cy
:v/^0/d _
:g/^0/normal $"cp
:%s/^0/
:%s/\(\d\+\)\(.*\)/\=substitute(submatch(2),submatch(1),"+"..submatch(1),"g")
:v/+/d_
:%s/ \d\+//g
:%s/.*/\=eval(submatch(0))
:%s/^/+
:%j
:s/.*/\=eval(submatch(0))

