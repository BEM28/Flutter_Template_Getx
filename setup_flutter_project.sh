#!/bin/bash
TEMPLATE_REPO="https://github.com/BEM28/Flutter_Template_Getx.git"
PROJECT_NAME=$1

if [ -z "$PROJECT_NAME" ]; then
  echo "⚠️  Usage: ./setup_project.sh <new_project_name>"
  exit 1
fi

echo "🚀 Setting up Flutter project: $PROJECT_NAME..."

# Clone template Flutter project
git clone $TEMPLATE_REPO $PROJECT_NAME
cd $PROJECT_NAME

# Rename project in pubspec.yaml
echo "🛠️  Renaming project in pubspec.yaml..."
sed -i '' "s/name: template_project/name: $PROJECT_NAME/g" pubspec.yaml

# Rename Android package name
echo "🛠️  Renaming Android package name..."
sed -i '' "s/com.example.template_project/com.example.$PROJECT_NAME/g" android/app/src/main/AndroidManifest.xml
sed -i '' "s/com.example.template_project/com.example.$PROJECT_NAME/g" android/app/build.gradle
sed -i '' "s/com.example.template_project/com.example.$PROJECT_NAME/g" android/app/src/main/java/com/example/template_project/MainActivity.java
# For Kotlin users, use this line instead
# sed -i '' "s/com.example.template_project/com.example.$PROJECT_NAME/g" android/app/src/main/java/com/example/template_project/MainActivity.kt

# Rename iOS bundle identifier
echo "🛠️  Renaming iOS bundle identifier..."
sed -i '' "s/com.example.templateProject/com.example.$PROJECT_NAME/g" ios/Runner/Info.plist
sed -i '' "s/com.example.templateProject/com.example.$PROJECT_NAME/g" ios/Runner.xcodeproj/project.pbxproj

# Run flutter pub get
flutter pub get

# Hapus folder .git biar project nggak punya history Git
echo "🗑️  Deleting .git folder to remove Git history..."
rm -rf .git

echo "✅ Flutter project '$PROJECT_NAME' successfully set up and Git history removed!"
