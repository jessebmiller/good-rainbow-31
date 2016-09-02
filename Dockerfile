FROM python:alpine
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app
CMD python app.py