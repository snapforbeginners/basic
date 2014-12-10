FROM haskell:7.8

RUN apt-get update

RUN cabal update
RUN cabal install snap

# Add Application Code
ADD ./Site.hs /opt/server/Site.hs

# run application 
CMD ["ghci", "/opt/server/Site.hs"]