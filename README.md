# node-cld3

Wrapper around the cld3 library compiled with Clang.

See Stackoverflow question here: https://stackoverflow.com/questions/76341132/undefined-c11-symbol-while-trying-to-create-a-node-js-binding-to-cld3

## Docker

1. Clone this repository

### Docker node:20 (working)

- `docker build . -t node-cld3:node`
- `docker run --rm -it node-cld3:node`

`Error: /build/build/Release/cld3.node: undefined symbol: _ZNK6google8protobuf11MessageLite25InitializationErrorStringB5cxx11Ev`

### Docker debian:bookworm (working)

- `docker build -f debian.Dockerfile . -t node-cld3:debian`
- `docker run --rm -it node-cld3:debian`

`Error: /build/build/Release/cld3.node: undefined symbol: _ZNK6google8protobuf11MessageLite25InitializationErrorStringB5cxx11Ev`

### Docker manjarolinux/base:20230521 (working)

- `docker build -f manjaro.Dockerfile . -t node-cld3:manjaro`
- `docker run --rm -it node-cld3:manjaro`

## Local

1. Ensure you are using Node.js >= 18
2. Install and compile `npm install`
3. Run the tests `npm run test`
