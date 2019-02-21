FROM ufoym/deepo
RUN apt-get update && apt-get install -y openssh-server && mkdir /var/run/sshd && echo 'root:root' |chpasswd

RUN sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config && sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

RUN mkdir /root/.ssh && apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 22

RUN pip3 install opencv-python jupyter gluoncv && rm -rf /root/.cache
CMD    ["/usr/sbin/sshd", "-D"]
#CMD jupyter notebook --no-browser --port 5050 --ip=0.0.0.0 --allow-root