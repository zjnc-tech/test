# 使用官方Nginx镜像作为基础
FROM nginx:alpine

# 复制测试文件到容器
COPY index.html /usr/share/nginx/html

# 暴露端口
EXPOSE 80

# 容器启动命令（基础镜像已包含，此处可省略）
CMD ["nginx", "-g", "daemon off;"]
