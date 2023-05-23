# flutter_fundations

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Create immutable state with freezed package

1. Install packages  
```
flutter_pub add riverpod  
flutter pub add freezed_annotation  
flutter pub add --dev freezed   
flutter pub add --dev build_runner  
```

2. Create state in state notifier  
Use snippets `fdata`  and `ptf`  

run to create the data classes  
``` flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs``` 
```flutter pub run build_runner watch --delete-conflicting-outputs ```  
