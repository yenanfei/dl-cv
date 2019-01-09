本项目基于[Deepo](https://github.com/ufoym/deepo)配合jupyter notebook来实现一键深度学习环境启动。
当前docker支持tensorflow、pytorch、keras、mxnet、caffe、caffe2、darknet等框架，cuda版本为9.0
```bash
docker run --runtime=nvidia -it -v ~/test:/test -p 5050:5050 xs020105/dl-cv 
```
这里使用了目录映射，需要先在本用户根目录下创建test目录，如果出现权限问题，可以添加--privileged=true尝试解决，即：
```bash
docker run --privileged=true --runtime=nvidia -it -v ~/test:/test -p 5050:5050 xs020105/dl-cv 
```
随后将自己想要运行的文件或监测的视频或代码放在test目录中，就可以jupyter中看到了，注意docker run起来以后，需要日志中显示的token来配合登录到jupyter notebook。
更多的docker安装和命令介绍可以访问我的[blog](https://nanfei.xyz/2019/01/06/%E4%B8%80%E9%94%AE%E6%B7%B1%E5%BA%A6%E5%AD%A6%E4%B9%A0/)

