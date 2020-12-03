FROM gitpod/workspace-full-vnc

RUN mkdir tools

RUN wget https://github.com/tonikelope/megadown/raw/master/megadown

RUN sudo apt-get install wine-stable

ENTRYPOINT ['wine','cmd']

