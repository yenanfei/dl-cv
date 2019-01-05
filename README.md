```bash
docker run --runtime=nvidia -it -v ~/test:/test -p 5050:5050 xs020105/dl-cv 
```
这里使用了目录映射，需要先在本用户根目录下创建test目录，如果出现权限问题，可以添加--privileged=true尝试解决，即：
```bash
docker run --privileged=true --runtime=nvidia -it -v ~/test:/test -p 5050:5050 xs020105/dl-cv 
```
随后将自己想要运行的文件或监测的视频或代码放在test目录中，就可以jupyter中看到了
