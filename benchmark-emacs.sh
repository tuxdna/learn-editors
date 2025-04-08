#/usr/bin/env bash

OUT_F="benchmark-emacs.log"

echo Start > $OUT_F
DEBUG_FLAGS="--debug-init"

for o in "" -nw -q --no-site-file --no-site-lisp --no-splash --no-x-resources "-nw -Q"
do
    OPTS="$DEBUG_FLAGS $o"
    echo "Running with options=${OPTS}"

    echo "options=${OPTS}" >> $OUT_F
    /usr/bin/time -a -o ${OUT_F} emacs ${OPTS} --eval '(save-buffers-kill-emacs)'
    echo >> $OUT_F

    echo "DONE"
    echo
done

