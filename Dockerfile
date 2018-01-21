#########################################
# SciF Base
#
# docker build -t vanessa/metrics.scif .
# docker run vanessa/metrics.scif
#
#########################################

FROM continuumio/miniconda3

#########################################
# SciF Install

RUN mkdir /code
ADD . /code
RUN /opt/conda/bin/pip install scif

# Install the filesystem from the recipe
RUN scif install /code/metrics.scif

# SciF Entrypoint

ENTRYPOINT ["scif"]
