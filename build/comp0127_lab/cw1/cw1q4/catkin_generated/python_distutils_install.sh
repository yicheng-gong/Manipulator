#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/yicheng/catkin_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/yicheng/catkin_ws/install/lib/python3/dist-packages:/home/yicheng/catkin_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/yicheng/catkin_ws/build" \
    "/usr/bin/python3" \
    "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4/setup.py" \
     \
    build --build-base "/home/yicheng/catkin_ws/build/comp0127_lab/cw1/cw1q4" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/yicheng/catkin_ws/install" --install-scripts="/home/yicheng/catkin_ws/install/bin"
