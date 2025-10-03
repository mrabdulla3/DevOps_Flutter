# Use official Flutter image as base
FROM cirrusci/flutter:stable

# Set working directory inside the container
WORKDIR /app

# Copy project files into container
COPY . .

# Get Flutter dependencies
RUN flutter pub get

# Run tests (optional for build image, you can also run this in Jenkins pipeline)
CMD ["flutter", "test"]
