## 🔗 Flutter Deep Linking + Route Management App

A complete Flutter app demonstrating deep linking, GetX route management, BLoC pattern, and get_it dependency injection with clean architecture.

Ye project ek **Flutter Deep Linking App** hai jo **Clean Architecture + BLoC + GetX + get_it** use karta hai.  
App me authentication flow, protected routes aur deep link handling implemented hai.

![Flutter](https://img.shields.io/badge/Flutter-Framework-blue?logo=flutter)

---

## ✨ Features
Core Functionality

✅ Deep Linking: Handle custom scheme + universal links

✅ Route Management: Named routes via GetX

✅ Dashboard: Home + Profile + Edit Profile

✅ Clean Architecture: Domain, Data, Presentation separation

✅ Dependency Injection: get_it service locator


User Experience

🎨 Modern UI with Material 3

📊 Bloc + GetX State Management

💾 Persistent Storage (GetStorage/SharedPrefs ready)

🔄 Pending Deep Links

---
## 🏗️ Project Architecture

```dart
lib/
 ├─ main.dart
 ├─ injection.dart        ✅ get_it setup
 ├─ core/app_routes.dart
 ├─ features/deeplink/
 │   ├─ domain/
 │   │   ├─ entities/deep_link_entity.dart
 │   │   └─ repositories/deep_link_repository.dart
 │   ├─ data/deeplink_repository_impl.dart
 │   └─ presentation/bloc/
 │       ├─ deeplink_bloc.dart
 │       ├─ deeplink_event.dart
 │       └─ deeplink_state.dart
 └─ modules/
     ├─ home_page.dart
     ├─ profile_page.dart
     └─ notification_page.dart


```


## Android Configuration
Add intent filters in AndroidManifest.xml:
```xml
<meta-data android:name="flutter_deeplinking_enabled" android:value="false" />
<intent-filter>
    <action android:name="android.intent.action.VIEW" />
    <category android:name="android.intent.category.DEFAULT" />
    <category android:name="android.intent.category.BROWSABLE" />
    <data android:scheme="mycompanymyapp" android:host="home"/>
    <data android:scheme="mycompanymyapp" android:host="notification"/>
    <data android:scheme="mycompanymyapp" android:host="profile"/>
</intent-filter>

```


## iOS Configuration
```xml
<key>CFBundleURLTypes</key>
<array>
  <dict>
    <key>CFBundleURLSchemes</key>
    <array>
      <string>mycompanymyapp</string>
    </array>
  </dict>
</array>

```

## 📦 Dependencies
```yaml
dependencies:
  flutter:
    sdk: flutter
  get: ^4.6.6
  flutter_bloc: ^8.1.2
  equatable: ^2.0.5
  app_links: ^3.5.1
  get_it: ^7.6.0

```



## 🔐 Routes

home_page

profile_page.dart

notification_page





##  Web Links useage
```
mycompanymyapp://profile
mycompanymyapp://home
mycompanymyapp://notification
```



Happy Deep Linking! 🚀

*This project demonstrates real-world deep linking implementation with modern Flutter development practices.*


💡 Made with ❤️ using Flutter by [Mohammad Afzal](https://github.com/Mohammad-Afzal786)
