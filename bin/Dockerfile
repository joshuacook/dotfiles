FROM jagregory/pandoc
RUN apt-get update -y \
  && apt-get install -y --no-install-recommends \
  texlive-fonts-recommended
RUN apt-get install -y lmodern

RUN apt-get install -y qpdf pdftk
