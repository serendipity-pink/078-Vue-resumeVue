# Dockerfile
# 使用node做为镜像
FROM node
# 在容器中创建该目录
RUN mkdir -p /home/project/vue
# 设置容器的工作目录为该目录
WORKDIR /home/project/vue
# 向外提供3000端口
EXPOSE 80
# 容器创建完成后执行的命令
CMD npm install --registry=https://registry.npm.taobao.org && node ./start.js
