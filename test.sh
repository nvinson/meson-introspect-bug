#!/bin/bash

export CC="clang"
export LDFLAGS="-Wl,-O1 -Wl,--as-needed -fuse-ld=lld -rtlib=compiler-rt -unwindlib=libunwind"

[[ -d build ]] && meson setup --wipe build || meson setup build;
cd build

meson introspect --buildoptions $(realpath $(pwd)/../meson.build)
echo -e "\n\nintrospect should have returned a JSON blob"

# cd /var/tmp/portage/app-emulation/qemu-7.2.0-r1/work/qemu-7.2.0/softmmu-build
# meson introspect --buildoptions /var/tmp/portage/app-emulation/qemu-7.2.0-r1/work/qemu-7.2.0/meson.build
