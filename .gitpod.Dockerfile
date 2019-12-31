FROM gitpod/workspace-full
                    
USER root


    
RUN apt-get update && \
        apt-get install -y gcc g++ python libzmq5 libzmq5-dev libprotobuf-dev protobuf-compiler
        
        
RUN ./waf configure && \
        ./waf build

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/42_config_docker/
