FROM ruby:2.7.1-alpine

# If only aptible supported multistage files :tsad:

ARG RAILS_ENV=production
ARG NODE_ENV=production

ENV RAILS_ENV=${RAILS_ENV}
ENV NODE_ENV=${NODE_ENV}
ENV RAILS_LOG_TO_STDOUT true
ENV RUBYOPT=--enable-frozen-string-literal

RUN apk add --update --no-cache \
      binutils-gold \
      build-base \
      curl \
      file \
      g++ \
      gcc \
      git \
      less \
      libstdc++ \
      libffi-dev \
      libc-dev \ 
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      libgcrypt-dev \
      make \
      netcat-openbsd \
      nodejs \
      openssl \
      pkgconfig \
      postgresql-dev \
      python \
      tzdata \
      yarn


WORKDIR /usr/app 

COPY Gemfile Gemfile.lock ./

RUN bundle check || bundle install 

COPY . . 

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["bundle", "exec"]

CMD ["rails", "server", "-b", "0.0.0.0"]
