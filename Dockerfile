FROM scottw/alpine-perl:5.26.0
MAINTAINER Pau Ruiz Safont psafont@ebi.ac.uk

# Dependencies
RUN apk update && \
    apk add expat-dev

RUN cpanm Bundle::LWP REST::Client XML::Simple YAML::Syck

WORKDIR /usr/src/ebitools
ENV PATH="/usr/src/ebitools/:${PATH}"

COPY ./*.pl /usr/src/ebitools/
# package secondary tools for linking the perl scripts
COPY ./*.sh /usr/src/ebitools/
RUN chmod +x /usr/src/ebitools/*.*
