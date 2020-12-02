FROM gitpod/workspace-full-vnc

RUN mkdir tools

RUN wget https://github.com/tonikelope/megadown/raw/master/megadown

RUN mv megadown tools/megadown

RUN ./tools/megadown https://mega.nz/folder/ZN1Q1IDQ#Jddsemx8xTCNEEnu-H8YEg/file/JIkV1IpS -p Jddsemx8xTCNEEnu-H8YEg

RUN unzip Wii_Middleware-libMobiclip-3_3_0-20110217.zip

RUN apt-get install wine-stable

ENTRYPOINT ['wine','cmd']

