FROM ufoym/deepo
RUN pip3 install opencv-python jupyter gluoncv
CMD jupyter notebook --no-browser --port 5050 --ip=0.0.0.0 --allow-root