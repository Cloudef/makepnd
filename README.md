makepnd
=======

Scripts for building PND packages from recipes for OpenPandora handheld

## Installing

    mkdir target && cd target                # - create build target directory
    cmake -DCMAKE_INSTALL_PREFIX=/usr ..     # - run CMake, set install prefix
    make DESTDIR="$PWD/install"              # - install
