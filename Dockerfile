# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM jupyter/scipy-notebook:5ded1de07260

MAINTAINER Jupyter Project <jupyter@googlegroups.com>

#######
USER root
RUN apt-get update;apt-get install nano\
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /gpfs gs{2..8} /spin1 /data /scratch /fdb /lscratch

USER $NB_USER
#######

