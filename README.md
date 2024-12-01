### Repository Description for "Messaging Task"

**Messaging Task** is a Flutter-based project designed to demonstrate real-time push notifications and local notification handling using Firebase Cloud Messaging (FCM). The app allows users to subscribe to various channels and receive notifications seamlessly across app states (foreground, background, and terminated). Key features include persistent user subscriptions, dynamic UI updates, and robust notification handling with local and remote messages.

---

### README File for **Messaging Task**

```markdown
# Messaging Task

Messaging Task is a Flutter application that showcases Firebase Cloud Messaging (FCM) integration for handling real-time push notifications. Users can subscribe to channels and receive notifications, with data persistence and dynamic UI updates. The project ensures robust notification handling across all app states, including foreground, background, and terminated.

---

## Table of Contents
1. [Features](#features)
2. [Technologies Used](#technologies-used)
3. [Setup Instructions](#setup-instructions)
4. [App Structure](#app-structure)
5. [Usage](#usage)
6. [Screenshots](#screenshots)
7. [License](#license)

---

## Features

- **Channel Subscription**: Subscribe/unsubscribe to channels with a simple toggle.
- **Persistent Data**: Subscribed channels are saved locally using `SharedPreferences`.
- **Push Notifications**: Receive remote notifications from Firebase Cloud Messaging (FCM).
- **Local Notifications**: Display notifications on the device for foreground messages.
- **Dynamic Navigation**: Handle navigation from notifications dynamically based on the app's state.

---

## Technologies Used

- **Flutter**: For building the user interface and handling app logic.
- **Firebase Cloud Messaging**: For sending and receiving notifications.
- **Flutter Local Notifications**: For handling notifications locally.
- **SharedPreferences**: For data persistence across app sessions.

---

## Setup Instructions

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/messaging-task.git
   cd messaging-task
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Set up Firebase:
   - Create a Firebase project.
   - Download `google-services.json` for Android and `GoogleService-Info.plist` for iOS.
   - Place these files in the respective platform directories (`android/app` and `ios/Runner`).

4. Run the app:
   ```bash
   flutter run
   ```

---

## App Structure

```
messaging-task/
├── lib/
│   ├── components/
│   │   └── channel_card.dart
│   ├── models/
│   │   └── channel.dart
│   ├── network/
│   │   └── messaging_api.dart
│   ├── pages/
│   │   ├── channels_page.dart
│   │   └── subscribed_channels.dart
│   ├── constants.dart
│   ├── main.dart
│   └── firebase_options.dart
├── android/
├── ios/
├── pubspec.yaml
└── README.md
```

---

## Usage

1. Launch the app.
2. View the list of available channels.
3. Toggle the switch to subscribe/unsubscribe to channels.
4. Receive notifications when subscribed to a channel.
5. Tap on a notification to navigate directly to the relevant app screen.

---
