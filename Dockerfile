FROM haskell

RUN apt-get update && apt-get upgrade -y && \
 apt-get install -y build-essential libncurses5-dev && \
 cabal update

RUN cabal install idris --dependencies-only && cabal install idris

CMD idris
