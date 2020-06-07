 # syntax = docker/dockerfile:1.0-experimental
FROM python:3.7-slim AS builder

# RUN --mount=type=cache,target=/var/cache/apt --mount=type=cache,target=/var/lib/apt \
RUN apt-get -y update \
	&& apt-get -y install --no-install-recommends \
	binutils libpq-dev python3-dev gcc \
	# postgresql-client \
	# && apt-get install -y --no-install-recommends \
	# apt-utils \
	&& rm -rf /var/lib/apt/lists/* 


WORKDIR app

COPY ./requirements.txt /app/requirements.txt
# RUN --mount=type=cache,target=/root/.cache/pip
RUN pip install --upgrade pip setuptools wheel \
	&& pip install --no-cache-dir --user -r /app/requirements.txt

FROM python:3.7-slim AS app
RUN apt-get -y update \
	&& apt-get -y install --no-install-recommends \
	binutils libpq-dev python3-dev gcc \
	postgresql-client \
	# && apt-get install -y --no-install-recommends \
	# apt-utils \
	&& rm -rf /var/lib/apt/lists/*

COPY --from=builder  /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH
ENV PYTHONUNBUFFERED 1
COPY . /app
EXPOSE 8001

CMD ["gunicorn","--chdir","app","--bind",":8001","kandilli_remote.wsgi:application"]
# ENTRYPOINT [ "python"]
# CMD [ "python","/app/manage.py", "runserver", "0.0.0.0:8001"]
