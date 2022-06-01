FROM circleci/runner:launch-agent

USER 0
RUN \
  apt update && \
  apt install -y --no-install-recommends xz-utils git && \
  cd /usr/local && \
  wget -O node.tar.xz https://nodejs.org/dist/v16.15.0/node-v16.15.0-linux-x64.tar.xz && \
  tar axf node.tar.xz && \
  rm node.tar.xz && \
  mv node* node && \
  cd /usr/local/bin && \
  ln -s /usr/local/node/bin/node && \
  ln -s /usr/local/node/bin/npm && \
  ln -s /usr/local/node/bin/npx && \
  npm install --global yarn && \
  node --version && \
  ln -s /usr/local/node/lib/node_modules/yarn/bin/yarn && \
  yarn --version && \
  rm -fr /var/lib/apt/lists/

USER circleci
