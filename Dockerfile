FROM debian
RUN apt-get update
RUN apt install gcc-multilib nano -y
COPY programFORlab2.s .
COPY programFORlab2.c .
RUN gcc -m32 -no-pie programFORlab2.s -o programFORlab2S
RUN gcc programFORlab2.c -o programFORlab2C
CMD ./programFORlab2S && ./programFORlab2C

