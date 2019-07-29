FROM codeception/codeception:latest
RUN apt-get update -yqq && apt-get install git -yqq && apt-get install gnupg -yqq
RUN curl -sS -L https://dl.google.com/linux/linux_signing_key.pub | apt-key add
RUN echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list
RUN apt-get update && apt-get upgrade -y && apt -f install && apt-get install -yqq google-chrome-stable
ENTRYPOINT []