#!/bin/bash

# REAL_PY=`python2.7-config --prefix`

BN_PY_LB="/Applications/Binary Ninja.app/Contents/MacOS/plugins/libpythonplugin.dylib"

# echo $REAL_PY

# cp -n "${REAL_PY}/Python" "${REAL_PY}/Python.bak"

# install_name_tool -change "/System/Library/Frameworks/Python.framework/Versions/2.7/Python" "${REAL_PY}/Python" "${BN_PY_LB}"

install_name_tool -change "/System/Library/Frameworks/Python.framework/Versions/2.7/Python" "/usr/local/opt/python/Frameworks/Python.framework/Python" "${BN_PY_LB}"

# This seems to work better now?
install_name_tool -change "/usr/local/Cellar/python/2.7.13/Frameworks/Python.framework/Versions/2.7/Python" "/usr/local/opt/python/Frameworks/Python.framework/Python" "${BN_PY_LB}"


otool -L "${BN_PY_LB}"

echo "If everything went well, you should Python is coming from /usr/local/"
