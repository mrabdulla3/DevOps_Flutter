# Use official lightweight Flutter image
FROM ghcr.io/cirruslabs/flutter:3.24.3

# Set working directory
WORKDIR /app

# Copy only pubspec first (to cache dependencies)
COPY pubspec.* ./

# Get dependencies
RUN flutter pub get

# Copy rest of the app
COPY . .

# Default command: run tests
CMD ["flutter", "test"]
