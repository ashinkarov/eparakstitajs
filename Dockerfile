FROM ubuntu:focal

RUN apt-get update

RUN apt-get install -yq apt-utils software-properties-common wget

RUN wget -qO - https://www.eparaksts.lv/files/ep3updates/debian/public.key| apt-key add -

RUN apt-add-repository \
 "deb https://www.eparaksts.lv/files/ep3updates/debian focal eparaksts"

RUN apt-add-repository --remove "deb-src https://www.eparaksts.lv/files/ep3updates/debian focal eparaksts"

RUN apt-get update

RUN apt-get install -yq eparakstitajs3

RUN apt-get install -yq awp

RUN apt-get install -yq latvia-eid-middleware

RUN apt-get install -yq eparaksts-token-signing

RUN apt-get install -yq cardpeek pcscd libpcsclite1 libccid \
                        libusb-dev pcsc-tools

RUN apt-get install -yq firefox

RUN apt-get install -yq x11-xserver-utils
