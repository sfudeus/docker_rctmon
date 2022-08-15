FROM python:3-alpine
LABEL maintainer="Stephan Fudeus <github@mails.fudeus.net>"

RUN apk update && apk add git
RUN pip3 install -U git+https://github.com/sfudeus/rctmon@separate_grid_from_powerswitch

CMD ["rctmon", "-c", "/config.yaml", "daemon"]
EXPOSE 9831
USER 1
