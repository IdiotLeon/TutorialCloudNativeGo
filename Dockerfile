FROM golang:1.7.4-alpine
MAINTAINER idiotLeon

ENV SOURCES /go/src/github.com/idiotleon/TutorialCloudNativeGo

COPY . ${SOURCES}

RUN cd ${SOURCES} && CGO_ENABLED=0 go install

ENV PORT 8080
EXPOSE 8080

ENTRYPOINT TutorialCloudNativeGo