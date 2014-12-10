# Basic

This is one of the smallest Snap servers possible. It responds to
every request with `"Handled"`.

```haskell
{-# LANGUAGE OverloadedStrings #-}

import Snap.Core (writeBS, Snap)
import Snap.Http.Server (quickHttpServe)

main :: IO ()
main = quickHttpServe handler

handler :: Snap ()
handler = writeBS "Handled"
```

# Using the Image

The image is available on the docker registry:

```
docker pull snapforbeginners/basic
```

The Snap server runs on port `8000`, so we'll use that same port on
the host:
```
docker run -it -p 8000:8000 snapforbeginners/basic
```

# Building

To build a new image, we need to clone this repository and run `docker
build`.

```
git clone git@github.com:snapforbeginners/basic.git
cd basic
docker build -t basic .
```

then we can run it as before:

```
docker run -it -p 8000:8000 basic
```
