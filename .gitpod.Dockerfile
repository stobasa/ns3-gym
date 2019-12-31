FROM gitpod/workspace-full
                    
USER root

RUN apt-get install gcc g++ python && #
    #add-apt-repository ppa:maarten-fonville/protobuf && #
    #apt-get update && #
    apt-get install libzmq5 libzmq5-dev && #
    apt-get install libprotobuf-dev && #
    apt-get install protobuf-compiler

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/42_config_docker/
