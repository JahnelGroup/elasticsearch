FROM alpine:3.6
COPY logs.sh /logs.sh
RUN chmod go-w /logs.sh
RUN mkdir /logs
CMD [ "sh",  "/logs.sh" ]