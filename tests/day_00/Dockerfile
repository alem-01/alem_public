FROM google/dart:2.12

WORKDIR /app
COPY . .
RUN dart pub get
ENTRYPOINT ["/app/entrypoint.sh"]
