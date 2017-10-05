# vim:set ft=dockerfile:
FROM alpine:edge
RUN apk add --update musl-utils build-base R R-dev cairo-dev grep
RUN R -e 'install.packages("caret", repos="https://stat.ethz.ch/CRAN/")'
RUN R -e 'install.packages("pls", repos="https://stat.ethz.ch/CRAN/")'
RUN R -e 'install.packages("randomForest", repos="https://stat.ethz.ch/CRAN/")'
RUN R -e 'install.packages("gridExtra", repos="https://stat.ethz.ch/CRAN/")'
RUN R -e 'install.packages("doMC", repos="https://stat.ethz.ch/CRAN/")'
RUN R -e 'install.packages("Rserve", repos="https://stat.ethz.ch/CRAN/")'

EXPOSE 6311
ENTRYPOINT R -e "Rserve::run.Rserve(remote=TRUE)"
#CMD ["R", "CMD", "Rserve"]
