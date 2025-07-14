cp $XCB_INCLUDE_DIR/xcb.h xcb.h
sed '/^[[:space:]]*#include/{
    /#include *"xproto.h"/!s/^/\/\/ /
}' xcb.h > xcb-clean.h
clang -E -I$XCB_INCLUDE_DIR xcb-clean.h -o xcb-clean.i
mv xcb-clean.i xcb-clean.h
sed -i '1s/^/#include <pthread.h>\n/' xcb-clean.h
sed -i '1s/^/#include <stdint.h>\n/' xcb-clean.h
dstep --package xcb_d xcb-clean.h -o install/xcb.d
cp $PWD/../src/package.d install/package.d
