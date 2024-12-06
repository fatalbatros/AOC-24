:let @c=""
:%s?\(\d*\)|\(\d*\)?:g/\2.*\1/d
:g/g/normal "Cdd
@c
:let @v='$:let @f=eval(col(".")/2-1):s/.\{f}\(\d*\).*/\1'
:g/\d/normal @v
:g/\d/s/^/+
:%j
:s/.*/\=eval(submatch(0))
