#!/bin/bash
echo "🔧 Flutter Signed APK Auto Build Starting..."

if ! command -v flutter &> /dev/null; then
  echo "❌ Flutter not found. Please install Flutter first."
  exit 1
fi

read -p "👉 Enter your Flutter project folder name (e.g. rajak_dhobi_app): " proj
cd ~/$proj || { echo "❌ Folder not found!"; exit 1; }

if [ ! -f ~/rajak_keystore.jks ]; then
  echo "🧩 Generating new keystore..."
  keytool -genkey -v -keystore ~/rajak_keystore.jks -alias rajakkey -keyalg RSA -keysize 2048 -validity 10000 -storepass 123456 -keypass 123456 -dname "CN=Mahaveer, OU=App, O=RajakSamaj, L=Kota, S=Rajasthan, C=IN"
fi

echo "storePassword=123456" > android/key.properties
echo "keyPassword=123456" >> android/key.properties
echo "keyAlias=rajakkey" >> android/key.properties
echo "storeFile=$(echo $HOME)/rajak_keystore.jks" >> android/key.properties

flutter pub get
flutter build apk --release

echo "✅ APK build completed!"
echo "📦 Find your signed APK here:"
echo "$(pwd)/build/app/outputs/flutter-apk/app-release.apk"
