FROM        base/archlinux
MAINTAINER  in-silico toxicology GmbH

RUN         pacman-db-upgrade && pacman -Syyu --noconfirm && pacman -S --noconfirm \
            base-devel \
            boost-libs \
            cmake \
            eigen3 \
            fontconfig \
            gcc-fortran \
            git \
            gsl \
            jre10-openjdk-headless \
            mongodb \
            mongodb-tools \
            r \
            ruby \
            swig \
            vim \
            wget && pacman -Scc --noconfirm

RUN         useradd -ms /bin/bash ist
RUN         echo "ist ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN         mkdir -p /data/db
USER        ist
WORKDIR     /home/ist

RUN         sudo R -e "install.packages('Rserve', repos='http://rforge.net/')"

RUN         echo 'gem: --user-install --no-document' > ~/.gemrc
ENV         PATH $PATH:/home/ist/.gem/ruby/2.5.0/bin

RUN         gem install bundler
#RUN         bundle config --global silence_root_warning 1

RUN         gem install lazar-gui
COPY        start.sh /home/ist/start.sh
RUN         sudo chmod +x /home/ist/start.sh
ENTRYPOINT  ["/home/ist/start.sh"]
