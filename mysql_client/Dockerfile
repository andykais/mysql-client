FROM mysql

COPY .editrc /root/.editrc
COPY wait-for-it/wait-for-it.sh /usr/bin/wait-for-it.sh

RUN apt-get update \
  && apt-get install -y python3 python3-pip less
RUN pip3 install mycli
RUN echo "export LC_ALL=C.UTF-8" >> /root/.bashrc \
      && echo "export LANG=C.UTF-8" >> /root/.bashrc

COPY entrypoint.sh /usr/bin/entrypoint.sh
