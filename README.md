Slim Images: [![Docker Repository on Quay](https://quay.io/repository/realeyes/alpine-node-git/status "Docker Repository on Quay")](https://quay.io/repository/realeyes/alpine-node-git)

Thick CI Images: [![Docker Repository on Quay](https://quay.io/repository/realeyes/alpine-node-git-ci/status "Docker Repository on Quay")](https://quay.io/repository/realeyes/alpine-node-git-ci)

# alpine-node-git
Alpine with Node and Git. Multiple flavors of Node included, with a slim and heavy image to keep CI components out of the base image.

# To build and deliver to Quay.io:
1. Log in to your Quay.io account, and retrieve your encrypted docker login command from the settings
2. docker login with that above command
3. chmod +x build.sh
4. Run build.sh
