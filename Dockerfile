FROM ufoym/deepo
RUN pip3 install opencv-python jupyter
RUN jupyter notebook --no-browser --port 5051 --ip=0.0.0.0 --allow-root