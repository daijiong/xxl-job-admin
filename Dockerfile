FROM openjdk:8-jre-slim
LABEL author="daijiong"
ENV TZ=PRC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN mkdir -p /xxl-job-admin
WORKDIR /xxl-job-admin
EXPOSE 8082
ADD ./target/xxl-job-admin.jar ./
CMD sleep 10;java -Dfile.encoding=utf-8 -Djava.security.egd=file:/dev/./urandom -jar xxl-job-admin.jar