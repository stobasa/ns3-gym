FROM gitpod/workspace-full
                    
USER root


    
RUN apt-get update && \
        apt-get install -y gcc g++ python libzmq5 libzmq5-dev libprotobuf-dev protobuf-compiler

WORKDIR ./ns3-gym       
        
RUN ./waf configure
RUN ./waf build
        
RUN pip3 install ./src/opengym/model/ns3gym

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/42_config_docker/
