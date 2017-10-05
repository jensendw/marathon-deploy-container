FROM docker:17.09.0-ce-dind

ENV MARATHON_DEPLOY_VERSION 0.1.55

RUN apk update && apk add make ruby ruby-json ruby-rdoc ruby-dev ruby-irb
RUN gem install marathon_deploy -v $MARATHON_DEPLOY_VERSION
