# Credpal Test

A new Flutter project.

<img src="assets/screenshots/screenshot.png" alt="App Screenshot" width="300"/>

> Please note the zipped file of the application is in /assets/screenshots folder

## Getting Started

This project is a starting point for a Flutter application.

For help getting started with Flutter development, view the [online documentation](https://docs.flutter.dev/), which offers tutorials, samples, guidance on mobile development, and a full API reference.

## Observations and Assumptions

- **Performance**: Flutter generally provides good performance due to its efficient rendering engine. It is important to avoid unnecessary widget rebuilds to keep the app running smoothly.
- **Code Organization**: It's crucial to maintain a clean separation between the UI and business logic. A well-organized code structure improves maintainability and helps the app scale easily.
- **State Management with BLoC**: The app uses BLoC for state management, which helps in separating business logic from the UI, making the app more scalable and testable.
- **Navigation with GoRouter**: GoRouter is used for handling navigation, providing a declarative and structured approach to managing routes and deep linking within the app.
- **Asset Management**: Some images in the project aren't being used currently, but it is assumed that they could be utilized when data is fetched dynamically from a REST API. This could involve displaying images based on data received from the API, such as product images or merchants.
- Merchants would be fetched from an API and can either be active or inactive, hence the green dot at the top right of the merchant, the merchants without the greeen dots are inactive

## How to Run and Build the App

### Prerequisites

- Flutter SDK (Latest Stable Version)
- Android NDK Version: `27.0.12077973`
- A connected Android device or emulator
- Run `flutter doctor` to confirm your environment is properly configured

### Run the App

```bash
git clone <repo_url>
cd credpal_test-2
flutter pub get
flutter run
```

### Build APK

```bash
flutter build apk --release
```

The APK will be available at: build/app/outputs/flutter-apk/app-release.apk
