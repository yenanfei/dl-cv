```bash
docker run --runtime=nvidia -it -v /home/nanfei/test:/test -p 5050:5050 xs020105/dl-cv 'jupyter notebook --no-browser --port 5050 --ip=0.0.0.0 --allow-root'
```