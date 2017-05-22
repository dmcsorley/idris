# idris
Builds a docker image of idris

Currently builds a 1.82 GiB docker image based on the latest haskell image, using cabal. It gets the latest idris version which is available to cabal. Useful for playing with idris but I wouldn't want to use this image for any real purposes. Hoping to figure out how to statically link the binary if possible and maybe use the new multistage docker builds to trim the images size quite a bit.

To build:

    docker build -t dmcsorley/idris .

If you're building this on a VM, like docker on mac using virtualbox, you may need to increase the memory available to the VM due to how much is apparently needed. I didn't get a successful build until I increased it from 2 GiB to 4.
