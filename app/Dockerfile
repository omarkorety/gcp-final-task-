FROM python:3.7
WORKDIR /app
COPY . /app
RUN apt update -y
RUN pip install -r requirements.txt 
ENV ENVIRONMENT=DEV
ENV HOST=localhost
ENV PORT=8000
ENV REDIS_HOST=localhost
ENV REDIS_PORT=6379
ENV REDIS_DB=0
# RUN export $(cat .env | xargs) && python hello.py
#RUN python hello.py
EXPOSE 8000
CMD [ "python3" , "hello.py" ]

