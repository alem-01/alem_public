FROM google/dart:2.12

WORKDIR /app
RUN mkdir /.pub-cache
RUN chown -R 1000:1000 /app
RUN chown -R 1000:1000 /.pub-cache
USER 1000:1000
COPY . .
RUN dart pub get
ENTRYPOINT ["/app/entrypoint.sh"]
