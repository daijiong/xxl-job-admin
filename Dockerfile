FROM registry.cn-hangzhou.aliyuncs.com/djflying/base-image:1.0.0
LABEL author="daijiong"
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN mkdir -p /xxl-job-admin
WORKDIR /xxl-job-admin
EXPOSE 8082
ADD ./target/xxl-job-admin.jar ./
CMD sleep 10;java -Dfile.encoding=utf-8 -Djava.security.egd=file:/dev/./urandom -jar xxl-job-admin.jar