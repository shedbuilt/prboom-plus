#!/bin/bash
./configure --disable-gl && \
make -j $SHED_NUMJOBS && \
make DESTDIR="$SHED_FAKEROOT" install-strip || exit 1
install -dm755 "${SHED_FAKEROOT}/usr/local/bin"
mv "${SHED_FAKEROOT}/usr/local/games/prboom-plus" "${SHED_FAKEROOT}/usr/local/bin"
mv "${SHED_FAKEROOT}/usr/local/games/prboom-plus-game-server" "${SHED_FAKEROOT}/usr/local/bin"
rmdir "${SHED_FAKEROOT}/usr/local/games"
