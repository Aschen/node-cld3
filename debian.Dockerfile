# Start from a base Ubuntu image with build essentials
FROM debian:bookworm-slim

# Install the necessary dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    cmake \
    protobuf-compiler \
    libprotobuf-dev \
    nodejs \
    npm

WORKDIR /build
COPY . .

RUN npm install
CMD ["npm", "run", "test"]
