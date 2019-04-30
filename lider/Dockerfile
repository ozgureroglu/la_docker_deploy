FROM debian:stretch

RUN	set -x; \
	apt-get update \
	&& apt-get install -y --no-install-recommends \
	gnupg2 \
	git \
	wget \
	software-properties-common \
	ssh \
	openjdk-8-jdk-headless


EXPOSE 1099 8101 44444

RUN pwd
RUN wget https://github.com/Pardus-LiderAhenk/lider/releases/download/v1.1/lider-distro-all_1.1.tar.gz -P /srv
WORKDIR /srv
RUN tar xvf /srv/lider-distro-all_1.1.tar.gz

COPY tr.org.liderahenk.cfg /usr/share/lider-server/etc/tr.org.liderahenk.cfg
COPY tr.org.datasource.cfg /usr/share/lider-server/etc/tr.org.liderahenk.datasource.cfg
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-amd64
CMD ["/srv/lider-distro-1.1/bin/karaf"]




