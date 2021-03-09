FROM python:3.6.8
MAINTAINER Vladimir Markovskii <mvs_316@mail.ru>

WORKDIR student-exam2
COPY . ./
RUN pip install -e .
EXPOSE 5000

CMD ["./docker_init.sh"]
