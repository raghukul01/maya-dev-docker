FROM google/dart

MAINTAINER hackcave

VOLUME /app

VOLUME /home/hackcave/.pub-cache

WORKDIR /app

RUN ln -s /usr/lib/dart /usr/lib/dart/bin/dart-sdk

RUN apt-get update && apt-get install -y build-essential \
  ruby \
  rubygems

RUN gem install sass

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
