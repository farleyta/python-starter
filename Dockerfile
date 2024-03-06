FROM python:3.12
RUN apt-get update
RUN apt-get install jq zsh -y
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

WORKDIR /usr/src/app

ENV PYTHON_VER=3.12

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY src/ .
RUN mkdir data_cache

CMD [ "python", "main.py" ]
