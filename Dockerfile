FROM archlinux:latest
# MAINTAINER 

USER 0
# Install Build-tools
RUN pacman -Syu --noconfirm git base-devel curl
# Install a Shell
RUN pacman -Syu --noconfirm zsh
# Add a User
RUN groupadd -g 1000 user
RUN useradd -r -u 1000 -g 1000 -s /usr/bin/zsh user
RUN usermod -d /work -m user
#Prepare a work directory for user
RUN mkdir /work
RUN chown 1000:1000 /work
WORKDIR /work


RUN pacman -Syu --noconfirm clang cmake

