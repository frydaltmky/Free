FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y shellinabox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


EXPOSE 4200


CMD ["shellinaboxd", "--port=4200", "-s", "/:root:root:/root:/bin/bash"]
