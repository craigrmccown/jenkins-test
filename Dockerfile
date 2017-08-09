FROM python:3.5

RUN mkdir -p /opt/app
WORKDIR /opt/app
ADD requirements.txt .
RUN pip install -r requirements.txt
ADD app.py .

CMD ["flask", "run", "--host=0.0.0.0"]
