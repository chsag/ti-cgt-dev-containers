FROM debian:bookworm-slim
RUN apt-get update && apt-get install wget --yes
RUN wget https://dr-download.ti.com/software-development/ide-configuration-compiler-or-debugger/MD-xqxJ05PLfM/22.6.0.LTS/ti_cgt_c2000_22.6.0.LTS_linux-x64_installer.bin
RUN chmod +x ti_cgt_c2000_22.6.0.LTS_linux-x64_installer.bin
RUN ./ti_cgt_c2000_22.6.0.LTS_linux-x64_installer.bin
RUN mv ti-cgt-c2000_22.6.0.LTS/bin/* /usr/bin
RUN mv ti-cgt-c2000_22.6.0.LTS/lib/* /usr/lib
RUN mv ti-cgt-c2000_22.6.0.LTS/include/* /usr/include
