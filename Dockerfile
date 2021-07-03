FROM heroku/heroku:20-build

RUN pip install fastapi
RUN pip install uvicorn[standard]

ADD . /workspace
WORKDIR /workspace

CMD ["uvicorn", "main:app", "--reload"]
