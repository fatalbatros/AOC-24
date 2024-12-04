:%s/^/0
:%s/\s\+/\r
:%sort
:g/^0/normal A-
:let @j= "1000j$v0y1000k$p"
:g/^0/normal @j
:v/^0/d _
:%s/^0/
:%s/.*/\=abs(eval(submatch(0)))
:%s/^/+
:%j
:s/.*/\=eval(submatch(0))
