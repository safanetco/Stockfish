FROM debian:oldstable
RUN apt-get update && apt-get install -y make g++
VOLUME /home/builder/Stockfish
WORKDIR /home/builder/Stockfish
RUN groupadd -r builder && useradd -r -g builder builder
USER builder
CMD ./unix_build.sh
