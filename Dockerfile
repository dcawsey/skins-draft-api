FROM python:3.13-alpine3.21

WORKDIR /skins-draft-api
RUN pwd

COPY . .

RUN python3 -m pip install -r ./requirements.txt
CMD ["fastapi", "run", "app/main.py", "--port", "80"]

# Docker assumes TCP by default
EXPOSE 80