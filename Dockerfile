FROM python:slim-bookworm

ARG AGENT_VNCPW

ENV VNC_PASSWORD=${AGENT_VNCPW}
ENV DISPLAY=:1
ENV VNC_PORT=5901

RUN mkdir -p /root/workspace/src
WORKDIR /root/workspace

COPY ./start-vnc.sh /root/workspace
COPY ./openai-agents-python/ /root/workspace/
COPY ./src /root/workspace/src

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
        vim \
        firefox-esr \
        python3-tk \
        python3-dev \
        tigervnc-standalone-server \
        xfce4 \
        xfce4-goodies \
        xorg \
        dbus-x11 \
        x11-xserver-utils \
        curl && \
        rm -rf /var/lib/apt/lists/*

RUN pip install .

RUN mkdir -p /root/.vnc && \
    echo ${VNC_PASSWORD} | vncpasswd -f > /root/.vnc/passwd && \
    chmod 600 /root/.vnc/passwd

COPY start-vnc.sh /root/workspace/start-vnc.sh
RUN chmod +x /root/workspace/start-vnc.sh

EXPOSE $VNC_PORT
CMD ["/root/workspace/start-vnc.sh"]




