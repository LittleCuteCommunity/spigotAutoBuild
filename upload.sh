#!/bin/bash

echo Upload
cd dist
if [ -f 'new_moe_build.txt' ];then
    TAGNAME=$(cat new_moe_build.txt)
    NAME="$(for a in 'spigot-*.jar'; do echo $a; done)"
    # hub release create $(for a in './dist/spigot-*.jar'; do echo -a $a; done) -m "$NAME" -t "master" "$TAGNAME"
    gh release create "$TAGNAME" --target "master" --title "$NAME" spigot-*.jar
fi
