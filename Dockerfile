FROM databricksruntime/python:6.0.x-scala2.11

COPY dist/*.whl ./

RUN /databricks/conda/envs/dcs-minimal/bin/pip install *.whl

#COPY /home/runner/work/cicd-test/cicd-test/requirements.txt .

#RUN /databricks/conda/envs/dcs-minimal/bin/pip install requirements.txt
