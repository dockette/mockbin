FROM node:16-alpine as builder

ENV VERSION=2

WORKDIR /srv

RUN apk add git
RUN git clone https://github.com/holyfork/kong-mockbin.git /srv
RUN npm ci --only=production

FROM node:16-alpine

LABEL maintainer="sulcmil@gmail.com"

ENV MOCKBIN_PORT="8000"
ENV MOCKBIN_QUITE="false"
ENV MOCKBIN_REDIS="redis://redis:6379"

COPY --from=builder /srv /srv

WORKDIR /srv
EXPOSE ${MOCKBIN_PORT}

CMD ["npm", "start"]
