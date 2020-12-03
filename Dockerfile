FROM gitpod/workspace-full-vnc

RUN mkdir tools

RUN wget https://github.com/tonikelope/megadown/raw/master/megadown

RUN sudo apt-get upgrade && sudo apt-get update -y && sudo apt-get install wine-stable -y && sudo apt-get install pv -y && sudo apt-get install python && dpkg --add-architecture i386 && apt update && apt -y install wine32

ENTRYPOINT ["wine","cmd"]

