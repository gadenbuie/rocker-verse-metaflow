FROM rocker/verse:latest

RUN R -e 'remotes::install_github("Netflix/metaflow", subdir = "R")'

RUN curl https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py \
  && /usr/bin/python3 /tmp/get-pip.py

RUN mkdir -p /home/rstudio
RUN sudo -u rstudio R -e 'metaflow::install()'

