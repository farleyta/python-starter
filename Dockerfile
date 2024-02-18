FROM python:3.12

WORKDIR /usr/src/app

ENV PYTHON_VER=3.12

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY src/ .
RUN mkdir data_cache

CMD [ "python", "main.py" ]
