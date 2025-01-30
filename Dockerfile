FROM python:3.12
EXPOSE 5000
WORKDIR /app
COPY requirements.txt  .
RUN pip install --no-cache-dir --upgrade -r requirements.txt
COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"]

#docker build -t flask-smorest-api .
#docker run -dp 5005:5000 flask-smorest-api
#docker run -dp 5005:5000 -w /app -v "$(pwd):/app" flask-smorest-api