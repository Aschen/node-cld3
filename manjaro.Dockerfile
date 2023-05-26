# Start from a base Ubuntu image with build essentials
FROM manjarolinux/base:20230521

# Install the necessary dependencies
RUN pacman --noconfirm -Sy \
    base-devel \
    git \
    cmake \
    protobuf \
    nodejs-lts-hydrogen \
    npm

WORKDIR /build
COPY . .

RUN npm install
CMD ["npm", "run", "test"]
