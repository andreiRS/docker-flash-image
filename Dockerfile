FROM    ubuntu

RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:cwchien/gradle
RUN apt-get update
RUN apt-get install -y git curl default-jre gradle-2.6

RUN curl https://raw.githubusercontent.com/andreiRS/dotfiles/master/.bashrc > /root/.bashrc
RUN mkdir /apps
ADD . /apps/air-app
WORKDIR /apps/air-app

RUN ["gradle"]
