import 'dart:convert';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:messaging_task/network/messaging_api.dart';
import 'package:messaging_task/pages/channels_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'network/firebase_options.dart';
import 'pages/subscribed_channels.dart';
import 'package:flutter/material.dart';

// function to listen to background changes
Future _firebaseBackgroundMessage(RemoteMessage message) async {
  if (message.notification != null) {
  }
}

GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'messaging task',
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // on background notification tapped
  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    if (message.notification != null) {
      navigationKey.currentState!.pushNamed("/subscribed_channels", arguments: message);
    }
  });

  MessagingApi.init();
  // only initialize if platform is not web
  if (!kIsWeb) {
    MessagingApi.localNotificationInit();
  }

  // Listen to background notifications
  FirebaseMessaging.onBackgroundMessage(_firebaseBackgroundMessage);

  // to handle foreground notifications
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    String payloadData = jsonEncode(message.data);

    if (message.notification != null) {
      MessagingApi.showSimpleNotification(
          title: message.notification!.title!,
          body: message.notification!.body!,
          payload: payloadData);
    }
  });

  // for handling in terminated state
  final RemoteMessage? message =
  await FirebaseMessaging.instance.getInitialMessage();

  if (message != null) {
    Future.delayed(const Duration(seconds: 1), () {
      navigationKey.currentState!.pushNamed("/subscribed_channels", arguments: message);
    });
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Messaging Task',
      navigatorKey: navigationKey,
      routes: {
        '/': (context) => const ChannelsPage(),
        '/subscribed_channels': (context) => const SubscribedChannels(),
      },
      initialRoute: '/',
    );
  }
}