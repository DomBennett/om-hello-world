FROM ubuntu:18.04

# outsider requires working_dir
RUN mkdir /working_dir
WORKDIR /working_dir
