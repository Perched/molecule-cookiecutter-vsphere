FROM fedora

WORKDIR /src

RUN dnf -y update && dnf clean all
RUN dnf -y install python3-pip openssl-devel libffi-devel gcc python3-devel /usr/bin/ssh-keygen /usr/bin/ssh sshpass rsync && dnf clean all

ADD . /molecule

RUN cd /molecule; pip3 install -r requirements.txt; mv -v ca-chain.pem /etc/pki/ca-trust/source/anchors/ && update-ca-trust

ENTRYPOINT ["molecule"]
