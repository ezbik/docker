# Base docker image
FROM ubuntu:16.04 

RUN apt-get update && apt-get install -y \
    dbus-x11 \
    dunst \
    hunspell-en-us \
    python3-dbus \
    software-properties-common \
    libx11-xcb1 \
    gconf2 \
    wget libgl1-mesa-dri libgl1-mesa-glx libxcomposite1 libxslt1.1  libgstreamer0.10-0 libgstreamer-plugins-base0.10-0  \
    zenity  --no-install-recommends  && apt-get clean

RUN apt-get install -y  libpulse0 libasound2 libnss3 libcurl3  binutils
RUN apt-get install -y gstreamer1.0-libav gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly gstreamer1.0-pulseaudio 

RUN cd /tmp && wget --progress=dot:giga  http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb 
RUN dpkg -i /tmp/viber.deb  && rm /tmp/viber.deb
#RUN strip /opt/viber/Viber

RUN apt-get install -y libx11-xcb1 libxcb-composite0 libxcb-present0 libxcb-sync1 libxcb-icccm4 libxcb-image0 libxcb-keysyms1  libxcb-render0 libxcb-render-util0 libxcb-xfixes0 libxcb-xfixes0 libxcb-randr0 libxcb-shape0 libxcb-xkb1 libxtst6
RUN apt-get install -y libpulse-mainloop-glib0
RUN apt-get install -y libegl1-mesa
RUN apt-get install -y sudo
RUN apt-get install -y libsm6
#RUN apt-get install -y xdg-utils

RUN add-apt-repository ppa:therealkenc/wsl-pulseaudio
RUN apt-get update
RUN apt-get install pulseaudio -y

RUN useradd -s /bin/bash -m gui


ENV QT_XKB_CONFIG_ROOT=/usr/share/X11/xkb

# Autorun x11vnc
CMD sudo -u gui -i  -- /opt/viber/Viber
