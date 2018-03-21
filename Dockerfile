ARG RUBY_VERSION

FROM ruby:$RUBY_VERSION

RUN apt-get update && \
  curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
  apt-get install -y nodejs

ENV BUNDLE_JOBS=4 \
  BUNDLE_PATH=/vendor/bundle/$RUBY_VERSION

RUN useradd --create-home --user-group --uid 1000 app && \
  mkdir -p /app/tmp /vendor && \
  chown -R app:app /app /vendor

USER app

WORKDIR /app
