# Stage 1: Build ứng dụng
# Sử dụng image Maven với JDK 17
FROM maven:3.8.6-openjdk-17 AS build
WORKDIR /app
# Sao chép file pom.xml trước để tận dụng cache của Docker
COPY pom.xml .
# Chạy build để tải các dependencies
RUN mvn dependency:go-offline
# Sao chép mã nguồn và đóng gói thành file .war
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Chạy ứng dụng
# Sử dụng base image Tomcat 10 với JRE 17
FROM tomcat:10.1-jre17-temurin
# Sao chép file .war từ stage build vào thư mục webapps của Tomcat
# Sử dụng tên cuối cùng được định nghĩa trong pom.xml
COPY --from=build /app/target/servlet-demo.war /usr/local/tomcat/webapps/ROOT.war
# Mở cổng 8080 để ứng dụng có thể truy cập
EXPOSE 8080
# Lệnh mặc định để khởi động Tomcat
CMD ["catalina.sh", "run"]
