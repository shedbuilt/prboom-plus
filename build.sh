#!/bin/bash
./configure --disable-gl &&
make -j $SHED_NUM_JOBS &&
make DESTDIR="$SHED_FAKE_ROOT" install-strip &&
install -dm755 "${SHED_FAKE_ROOT}/usr/local/bin" &&
mv "${SHED_FAKE_ROOT}/usr/local/games/prboom-plus" "${SHED_FAKE_ROOT}/usr/local/bin" &&
mv "${SHED_FAKE_ROOT}/usr/local/games/prboom-plus-game-server" "${SHED_FAKE_ROOT}/usr/local/bin" &&
rmdir "${SHED_FAKE_ROOT}/usr/local/games"
