# Use an official OpenJDK image that matches the Minecraft version runtime
FROM openjdk:17-slim

# Set the operational directory inside the container
WORKDIR /app

# Copy all the template files into the container
COPY . .

# Grant execute permissions to your startup script
RUN chmod +x run.sh

# Expose the Eaglercraft proxy gateway port
EXPOSE 25565

# Command to execute your launcher script upon deployment startup
CMD ["./run.sh"]
