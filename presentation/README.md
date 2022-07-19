# chat

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

in order to add new localization key:

- add the key-value pair for english language into '/locales/en_us.json';
- run **flutter pub run easy_localization:generate  -S "res/locales/" -s "en_us.json" -O "lib/generated/" -o "locale_keys.loc.dart" -f keys**  to generate the key-constants;