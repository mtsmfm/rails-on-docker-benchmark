ARG RUBY_VERSION

FROM ruby:$RUBY_VERSION

RUN apt-get update && \
  curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
  apt-get install -y nodejs

ENV BUNDLE_JOBS=4

RUN useradd --create-home --user-group --uid 1000 app && \
  mkdir -p /app/vendor/docker-sync /app/vendor/osxfs-without-mount /app/vendor/osxfs-with-mount && \
  chown -R app:app /app

USER app

WORKDIR /app
