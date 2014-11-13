FROM ruby:2.1.4

RUN \
      cd \
  &&  git clone https://github.com/joyent/node.git \
  &&  cd node \
  &&  git checkout v0.11.9

RUN \
  cd  ~/node \
  &&  ./configure \
  &&  make \
  &&  make install

RUN \
      node -v
