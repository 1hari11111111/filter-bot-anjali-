FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /filter-bot-anjali- 
WORKDIR /filter-bot-anjali-
COPY . /filter-bot-anjali-
CMD ["python", "bot.py"]
