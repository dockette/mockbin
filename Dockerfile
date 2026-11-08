FROM node:16-alpine AS builder

ARG MOCKBIN_VERSION=1.6.3

ENV VERSION=2

WORKDIR /srv

RUN apk add git
RUN git clone --depth 1 --branch v${MOCKBIN_VERSION} https://github.com/holyfork/kong-mockbin.git /srv
RUN npm install --omit=dev

FROM node:16-alpine

LABEL maintainer="sulcmil@gmail.com"

ENV MOCKBIN_PORT="8000"
ENV MOCKBIN_QUITE="false"
ENV MOCKBIN_REDIS="redis://redis:6379"

COPY --from=builder /srv /srv

WORKDIR /srv
EXPOSE ${MOCKBIN_PORT}

# mockbin 1.6.x reads only CLI flags, so pass the env vars as flags
CMD ["sh", "-c", "exec node bin/mockbin -p \"$MOCKBIN_PORT\" ${MOCKBIN_REDIS:+-r \"$MOCKBIN_REDIS\"}"]
