FROM vbatts/pandoc as builder

ADD README.md /
RUN pandoc -f markdown -t plain --no-wrap README.md -o README.txt


FROM busybox
MAINTAINER Laurent CORBES

COPY --from=builder README.txt /

CMD ["/bin/cat", "README.txt"]
