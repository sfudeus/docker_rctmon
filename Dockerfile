FROM python:3
LABEL maintainer="Stephan Fudeus <github@mails.fudeus.net>"

RUN pip3 install -U git+https://github.com/svalouch/rctmon

CMD ["rctmon", "-c", "/config.yaml", "daemon"]
EXPOSE 9831
