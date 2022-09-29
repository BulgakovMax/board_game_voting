FROM python:3.8
ENV PYTHONUNBUFFERED 1
RUN mkdir /board_game_voting
WORKDIR /board_game_voting
ADD . /board_game_voting/
RUN pip install --upgrade pip && pip install -r requirements.txt
RUN pip install mysqlclient
COPY . /board_game_voting/

ENTRYPOINT ["./docker/python/entrypoint.sh"]