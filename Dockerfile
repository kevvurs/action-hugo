FROM golang:1.24.2-alpine3.21

# Github labels
LABEL "com.github.actions.name"="Action Hugo"
LABEL "com.github.actions.description"="Run Hugo build"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/kevvurs/action-hugo"
LABEL "homepage"="https://www.seedshare.io"
LABEL "maintainer"="hello@seedshare.io"


# Install C and git
RUN apk add --no-cache gcc
RUN apk add --no-cache musl-dev
RUN apk add --no-cache git

# Add hugo v0.146.7
RUN git clone --branch v0.146.7 https://github.com/gohugoio/hugo.git /hugo
RUN cd /hugo; go install

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
