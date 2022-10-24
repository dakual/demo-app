FROM python:3.8-alpine

RUN mkdir /app

WORKDIR /app/

ADD app /app/
 
RUN pip install -r requirements.txt

EXPOSE 5000

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]