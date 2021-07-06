FROM python:3.9-alpine

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
WORKDIR src/

RUN ls -al .

ENV FLASK_APP "server"

CMD ["flask", "run", "--host=0.0.0.0"]
