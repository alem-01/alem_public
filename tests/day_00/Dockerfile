FROM google/dart:2.12

WORKDIR /jail
COPY . .
RUN dart pub get
ENTRYPOINT ["/jail/entrypoint.sh"]
