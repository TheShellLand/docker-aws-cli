FROM ubuntu:latest

# install
RUN apt update && \
    apt upgrade -y && \
    apt install -y curl gpg sudo systemd unzip groff mandoc less

RUN if dpkg --print-architecture | grep arm64 ; then curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && sudo ./aws/install; fi
RUN if dpkg --print-architecture | grep amd64 ; then curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && sudo ./aws/install; fi

RUN aws --version

RUN if dpkg --print-architecture | grep arm64 ; then curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_arm64/session-manager-plugin.deb" -o "session-manager-plugin.deb"; sudo dpkg -i session-manager-plugin.deb; fi
RUN if dpkg --print-architecture | grep amd64 ; then curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "session-manager-plugin.deb"; sudo dpkg -i session-manager-plugin.deb; fi

RUN session-manager-plugin

COPY entry.sh /entry.sh

# config
# ~/.aws/config
VOLUME /root/.aws/

ENTRYPOINT ["/bin/bash", "/entry.sh"]
