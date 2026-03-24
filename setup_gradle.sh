#!/bin/bash
# This script downloads the Gradle Wrapper JAR
# Run this once after cloning the repository

echo "📥 Downloading Gradle Wrapper JAR..."

mkdir -p gradle/wrapper

# Download gradle-wrapper.jar
curl -L \
  "https://raw.githubusercontent.com/gradle/gradle/v8.6.0/gradle/wrapper/gradle-wrapper.jar" \
  -o gradle/wrapper/gradle-wrapper.jar

if [ -f "gradle/wrapper/gradle-wrapper.jar" ]; then
  echo "✅ gradle-wrapper.jar downloaded successfully!"
  echo "🚀 Now run: ./gradlew assembleDebug"
else
  echo "❌ Download failed. Try manually:"
  echo "   1. Open Android Studio"
  echo "   2. File → Open → Select this folder"
  echo "   3. Android Studio will auto-setup Gradle"
fi
