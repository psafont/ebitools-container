FROM perl:5.24
MAINTAINER Pau Ruiz Safont psafont@ebi.ac.uk

# Dependencies
RUN cpanm Bundle::LWP REST::Client WWW::Curl WWW::Curl::Simple XML::Simple YAML::Syck

WORKDIR /usr/src/ebitools
ENV PATH="/usr/src/ebitools/:${PATH}"

COPY ./*.pl /usr/src/ebitools/
# package secondary tools for linking the perl scripts
COPY ./*.sh /usr/src/ebitools/
RUN chmod +x /usr/src/ebitools/*.*
