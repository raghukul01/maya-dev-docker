Maya-Development
====

A docker to build maya

To build maya, run
`docker run -v [path to maya root directory]:/app -v [path to pub-cache]:/.pub-cache hackcave/maya-dev-docker make build`

example - `sudo docker run -v /home/username/maya:/app -v /home/username/.pub-cache:/.pub-cache hackcave/maya-dev-docker make build`

To build just the css, run
`docker run -v [path to maya root directory]:/app hackcave/maya-dev-docker make css`
