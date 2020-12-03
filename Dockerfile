FROM gitpod/workspace-full-vnc

RUN mkdir tools

RUN wget https://github.com/tonikelope/megadown/raw/master/megadown

RUN mv megadown tools/megadown

RUN chmod +x tools/megadown

RUN sudo apt-get update

RUN sudo apt-get install -y pv

RUN df -h

RUN ./tools/megadown https://mega.nz/folder/ZN1Q1IDQ -p Jddsemx8xTCNEEnu-H8YEg -o mobi.zip

RUN unzip mobi.zip

RUN apt-get install wine-stable

ENTRYPOINT ['wine','cmd']

