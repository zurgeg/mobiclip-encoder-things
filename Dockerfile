FROM gitpod/workspace-full-vnc

RUN mkdir tools

RUN wget https://github.com/tonikelope/megadown/raw/master/megadown

RUN sudo apt-get upgrade && sudo apt-get update -y && sudo apt-get install wine-stable -y && sudo apt-get install pv -y && sudo apt-get install python && sudo dpkg --add-architecture i386 && sudo apt -y install wine32

RUN wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1F-KjT192hsL6DXalrdAErxjGKg0JR4fj' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1F-KjT192hsL6DXalrdAErxjGKg0JR4fj" -O clip.zip && rm -rf /tmp/cookies.txt

ENTRYPOINT ["wine","cmd"]

