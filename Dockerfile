# Docker support, thanks to xinyifly

FROM openjdk:8-alpine3.9
RUN apk -U add tini
WORKDIR /mnt
COPY ./ ./
RUN sh ./posix-compile.sh
EXPOSE 8484 7575 7576 7577
CMD exec tini -- sh ./posix-launch.sh
