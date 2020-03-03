#First docker file implementation using Sample.sh
ARG version="18.04"
FROM ubuntu:$version
RUN echo "version is "$version
ARG ENCRYPTION_KEY="99$"
LABEL MAINTAINER manjunath.mk37@gmail.com
RUN mkdir /code
COPY Sample.sh /code/Sample.sh
RUN chmod +x /code/Sample.sh
RUN echo "encrypted key is" $ENCRYPTION_KEY
ENTRYPOINT ["sh","/code/Sample.sh"]
CMD ["/etc/hosts"]
