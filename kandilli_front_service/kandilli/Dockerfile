 # syntax = docker/dockerfile:1.0-experimental
FROM python:3.6-alpine AS builder

# RUN --mount=type=cache,target=/var/cache/apt --mount=type=cache,target=/var/lib/apt \

RUN apk --update add \
    build-base \
    postgresql \
    postgresql-dev \
	libpq \
	&& mkdir /app
    # pillow dependencies
    # jpeg-dev \
    # zlib-dev

WORKDIR app

COPY ./requirements.txt /app/requirements.txt
# RUN --mount=type=cache,target=/root/.cache/pip
RUN pip install --upgrade pip setuptools wheel \
	&& pip install --no-cache-dir --user -r /app/requirements.txt

# FROM python:3.6-alpine AS app

# RUN apk --update add \
#     build-base \
#     postgresql \
#     postgresql-dev \
#     libpq \
#     # pillow dependencies
#     # jpeg-dev \
# 	# zlib-dev

# COPY --from=builder  /root/.local /root/.local

# ENV PATH=/root/.local/bin:$PATH
ENV PYTHONUNBUFFERED 1
COPY . /app
EXPOSE 8000

CMD ["gunicorn","--chdir","app","--bind",":8000","kandilli_obsvr.wsgi:application"]
