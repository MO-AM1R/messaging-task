import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyARjhCgoxcxZMCFYBTAx8qwRTCTGcxlcKo',
    appId: '1:219628265332:android:828d681b4d44d816711621',
    messagingSenderId: '219628265332',
    projectId: 'push-notification-df5a5',
    storageBucket: 'push-notification-df5a5.appspot.com',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBnlVcao_qfQf_xpX3phL5dCEz15sgatmk',
    appId: '1:219628265332:web:dfdc4bad1f678e8b711621',
    messagingSenderId: '219628265332',
    projectId: 'push-notification-df5a5',
    authDomain: 'push-notification-df5a5.firebaseapp.com',
    storageBucket: 'push-notification-df5a5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAeFt-hL55qzymqTOrcjuC46I4IxIktxyo',
    appId: '1:219628265332:ios:e9461ba1889c4bd9711621',
    messagingSenderId: '219628265332',
    projectId: 'push-notification-df5a5',
    storageBucket: 'push-notification-df5a5.appspot.com',
    iosBundleId: 'com.example.pushNotificationsFirebaseFlutter',
  );

}