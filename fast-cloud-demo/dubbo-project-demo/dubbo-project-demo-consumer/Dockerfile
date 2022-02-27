FROM openjdk:8-alpine3.9

MAINTAINER bytearch  Docker dubbo-project-demo bytearch@126.com

# 修改源
RUN echo "http://mirrors.aliyun.com/alpine/latest-stable/main/" > /etc/apk/repositories && \
    echo "http://mirrors.aliyun.com/alpine/latest-stable/community/" >> /etc/apk/repositories

#修改镜像为东八区时间
ENV TZ Asia/Shanghai

# add code
ADD ./target/dubbo-project-demo-consumer.jar /app.jar

EXPOSE 8080

CMD sleep 120

# entrypoint
ENTRYPOINT ["java", "-jar", "/app.jar"]