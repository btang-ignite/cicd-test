FROM databricksruntime/python:6.0.x-scala2.11

COPY poetry.lock .

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
RUN export PATH="$HOME/.poetry/bin:$PATH"
RUN source $HOME/.poetry/env
RUN poetry install

COPY dist/*.whl .

RUN /databricks/conda/envs/dcs-minimal/bin/pip install *.whl

