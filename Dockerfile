FROM        ruby:2.1.4

MAINTAINER  Rimian Perkins

RUN \
            cd \
        &&  git clone https://github.com/joyent/node.git \
        &&  cd node \
        &&  git checkout v0.11.9
        &&  ./configure \
        &&  make \
        &&  make install \
        &&  cd .. \
        &&  rm -rf ~/node
