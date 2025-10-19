Rajak Dhobi Samaj Yuva Ekta Manch
================================

This is a **ready-to-build Flutter project scaffold** prepared for you. It contains a minimal app implementing:
- Dual language (Hindi + English) toggle
- Footer text: "Powered by Mahaveer Pankaj, Itawa Kota Rajasthan"
- Placeholder for app logo (assets/logo.png) — replace this file with your actual logo image (PNG) before building.

Important: This repository is a scaffold. To produce a working APK you should copy these files into a real Flutter project created by `flutter create` or open this folder in Android Studio after running `flutter create` and merging.

Steps to build APK (on your machine)
------------------------------------

1. Install Flutter SDK & Android SDK and set up environment (PATH).
2. From terminal run:
   - `flutter create .`   # in this project folder, to populate android/ios folders
   - `flutter pub get`
3. Replace `assets/logo.png` with your real logo (same filename).
4. To run in debug on connected device:
   - `flutter run`
5. To build a normal unsigned release APK:
   - `flutter build apk --release`
   - Output: `build/app/outputs/flutter-apk/app-release.apk`
6. To produce a signed Play Store APK / App Bundle:
   - Follow Flutter docs to generate keystore and update android/app/build.gradle with signingConfig.
   - Then `flutter build appbundle` or `flutter build apk --release --target-platform=android-arm,android-arm64,android-x64`

App display name & footer
-------------------------
- Display name used in scaffold: "Rajak Dhobi Samaj Yuva Ekta Manch"
- Footer (fixed): "Powered by Mahaveer Pankaj, Itawa Kota Rajasthan"

If you want, I can:
- Generate a GitHub Actions CI workflow file to auto-build APK on push.
- Create a Play Store-ready signed build instructions (keystore setup + gradle config).
- Try to create a debug unsigned APK here (NOT possible in this environment due to lack of Android build tools).

Replace logo
------------
Place your actual logo file at: `assets/logo.png` (recommended: 512x512 PNG).

Contact
-------
If you want me to also:
- prepare a full, production-ready Flutter project (with more screens, admin panel, push notifications wiring), say okay and I'll scaffold it here for you to pull and build locally.