#!/bin/bash

TEMPLATE_REPO="https://github.com/BEM28/Flutter_Template_Getx.git"
PROJECT_NAME=$1

if [ -z "$PROJECT_NAME" ]; then
  echo "⚠️  Usage: ./setup_flutter_project.sh <new_project_name>"
  exit 1
fi

echo "🚀 Setting up Flutter project: $PROJECT_NAME..."

# Clone template
git clone $TEMPLATE_REPO $PROJECT_NAME
cd $PROJECT_NAME

# Rename project di pubspec.yaml
sed -i "s/name: template_project/name: $PROJECT_NAME/g" pubspec.yaml

# Ganti Android package name
./rename_android.sh $PROJECT_NAME

# Ganti iOS bundle identifier
./rename_ios.sh $PROJECT_NAME

# Jalankan flutter pub get
flutter pub get

echo "✅ Flutter project '$PROJECT_NAME' successfully set up!"