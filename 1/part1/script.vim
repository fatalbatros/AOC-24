:%s/\s\+/\r-
:%sort
:let @j= "1000j$v0y1000k0P"
:g/^-/normal @j
:v/-/d _
:%s/.*/\=abs(eval(submatch(0)))
:%s/^/+
:%j
:s/.*/\=eval(submatch(0))
