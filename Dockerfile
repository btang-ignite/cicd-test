FROM databricksruntime/python:6.0.x-scala2.11

COPY ./dist/*.whl ./

RUN /databricks/conda/envs/dcs-minimal/bin/pip install *.whl

COPY ./requirements.txt ./

RUN /databricks/conda/envs/dcs-minimal/bin/pip install -r requirements.txt
