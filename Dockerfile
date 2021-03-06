FROM python:stretch

COPY . /eks-project
WORKDIR /eks-project

RUN pip install --upgrade pip
RUN pip install -r requirements.txt



ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]