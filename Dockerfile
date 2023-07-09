FROM python:3-slim
LABEL maintainer="Stephan Fudeus <github@mails.fudeus.net>"

#RUN apk update && apk add git cargo
RUN apt-get update && apt-get -y --no-install-recommends install git
RUN pip3 install -U --no-cache-dir git+https://github.com/svalouch/rctmon

CMD ["rctmon", "-c", "/config.yaml", "daemon"]
EXPOSE 9831
USER 1
