FROM quay.io/quarkus/quarkus-micro-image:2.0
WORKDIR /app

COPY target/quarkus-app/lib/ /app/lib/
COPY target/quarkus-app/*.jar /app/
COPY target/quarkus-app/app/ /app/app/
COPY target/quarkus-app/quarkus/ /app/quarkus/

CMD ["java", "-jar", "/app/quarkus-run.jar"]
