FROM quay.io/cosee-concourse/dind:v1.11.1 

ENV MARATHON_DEPLOY_VERSION 0.1.55
ENV S3CMD_VERSION 2.0.0

RUN apk update && apk add make ruby ruby-json ruby-rdoc ruby-dev ruby-irb 
RUN gem install marathon_deploy -v $MARATHON_DEPLOY_VERSION
