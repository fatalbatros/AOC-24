:%s/\^/k
:let @k='krk:let @f=eval(col(".")-1)
:let @j='jrj:let @f=eval(col(".")-1)
:let @h='hrh:s/#h/#k
:let @l='lrl:s/l#/j#
:let @m='/[hjkl]
@m
:%s/[^X]//g
:%s/X/+1/g
:%j
:s/.*/\=eval(submatch(0))