# Stage 1: Build the application
FROM maven:3.8.6-openjdk-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
# Build the WAR file
RUN mvn clean package -DskipTests

# Stage 2: Run the application with Tomcat
FROM tomcat:10.1-jre17-temurin
# Copy the WAR file from the 'build' stage
COPY --from=build /app/target/servlet-demo.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
