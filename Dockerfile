FROM archlinux:latest

RUN pacman -Syu --noconfirm \
	git \
	base-devel \
	bash 

RUN yes | pacman -S zsh 
RUN yes | pacman -S ttf-jetbrains-mono-nerd 

RUN sudo useradd -m guest 

COPY ./starship /usr/local/bin/starship
RUN chmod +x /usr/local/bin/starship

COPY ./startup.sh /usr/local/bin/startup
COPY ./gotty /usr/local/bin/gotty
COPY ./.gotty /home/guest
RUN chmod +x /usr/local/bin/startup


WORKDIR /home/guest
USER guest

EXPOSE 8080

CMD ["startup"]
