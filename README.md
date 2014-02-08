makepnd
=======

Scripts for building PND packages from recipes for OpenPandora handheld

## Installing

    mkdir target && cd target                # - create build target directory
    cmake -DCMAKE_INSTALL_PREFIX=/usr ..     # - run CMake, set install prefix
    make DESTDIR="$PWD/install"              # - install

Default configuration is in ```/etc/makepnd.conf.default```
Copy this to /etc/makepnd.conf and modify for your liking.

## Recipes

Recipes directory contains some example PNDBUILD recipes.

* bash, xz, libarchive, makepnd

These recipes are supposed to be built as ipk for opkg ```PKGEXT=.ipk makepnd```

* milkyhelper, pndmanager

Example recipes showing how to package PND applications

