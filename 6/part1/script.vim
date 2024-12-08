:%s/\^/k
:let @k='krk:let @f=eval(col(".")-1):-1g/^.\{f}#/+1s/k/l'
:let @j='jrj:let @f=eval(col(".")-1):+1g/^.\{f}#/-1s/j/h'
:let @h='hrh:s/#h/#k'
:let @l='lrl:s/l#/j#'
:let @m='/[hjkl]:normal clX:normal @"@m'
@m
:%s/[^X]//g
:%s/X/+1/g
:%j
:s/.*/\=eval(submatch(0))
