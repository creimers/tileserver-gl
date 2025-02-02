FROM node:12

RUN export DEBIAN_FRONTEND=noninteractive \
  && apt-get -qq update \
  && apt-get -y --no-install-recommends install \
      apt-transport-https \
      curl \
      unzip \
      build-essential \
      python \
      libcairo2-dev \
      libgles2-mesa-dev \
      libgbm-dev \
      libllvm7 \
      libprotobuf-dev \
      libuv1 \
  && apt-get -y --purge autoremove \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*


RUN npm install @naturalatlas/mapbox-gl-native