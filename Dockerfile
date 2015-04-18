FROM haskell:7.10

RUN apt-get update

RUN cabal update
RUN cabal install snap

# Add .ghci file for interpreter imports
ADD ./.ghci /.ghci

# Add Application Code
ADD ./Site.hs /opt/server/Site.hs

# run application 
CMD ["ghci", "/opt/server/Site.hs"]
