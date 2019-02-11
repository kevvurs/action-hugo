FROM golang:1.11.5-alpine3.8

# Github labels
LABEL "com.github.actions.name"="Hugo Action"
LABEL "com.github.actions.description"="Run Hugo build"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/kevvurs/seedshare-blog"
LABEL "homepage"="https://www.seedshare.io"
LABEL "maintainer"="hello@seedshare.io"


# Install C and git
RUN apk add --no-cache gcc
RUN apk add --no-cache musl-dev
RUN apk add --no-cache git

# Add hugo v0.53
RUN git clone --branch v0.53 https://github.com/gohugoio/hugo.git /hugo
RUN cd /hugo; go install

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
