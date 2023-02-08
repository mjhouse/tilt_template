FROM python:3.10-bullseye

# add directories that have code
ADD cic/ cic/
ADD data/ data/
ADD assets/ assets/

# add configuration files
ADD pyproject.toml .
ADD config.toml .
ADD alembic.ini .

# install whatever we need to run
RUN pip install poetry
RUN poetry update

# launch the website
ENTRYPOINT ["poetry", "run", "website"]