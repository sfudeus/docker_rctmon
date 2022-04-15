FROM python:3
LABEL maintainer="Stephan Fudeus <github@mails.fudeus.net>"

RUN pip3 install -U git+https://github.com/sfudeus/rctmon@add_energy_insulation_metrics

CMD ["rctmon", "-c", "/config.yaml", "daemon"]
EXPOSE 9831
USER 1
