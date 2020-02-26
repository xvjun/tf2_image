FROM python:3.7

RUN mkdir -p /app/model/

COPY requirements.txt  /app/
#COPY tensorflow-2.0.0-cp37-cp37m-manylinux2010_x86_64.whl  /app/
COPY build_model.py  /app/model/
RUN pip install -r /app/requirements.txt
#RUN pip install /app/tensorflow-2.0.0-cp37-cp37m-manylinux2010_x86_64.whl


CMD  ["python","/app/model/build_model.py","/app/model/model.conf"]



