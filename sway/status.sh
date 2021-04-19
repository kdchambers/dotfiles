cmus_title=`cmus-remote -Q | grep "tag title" | cut -d ' ' -f 3-`
cmus_artist=`cmus-remote -Q | grep "tag artist" | cut -d ' ' -f 3-`

datetime=`date +'%Y-%m-%d %l:%M:%S %p'`

echo "$cmus_artist | $cmus_title   $datetime"
