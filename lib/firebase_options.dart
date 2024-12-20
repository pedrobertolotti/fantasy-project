// // File generated by FlutterFire CLI.
// // ignore_for_file: type=lint
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/foundation.dart'
//     show defaultTargetPlatform, kIsWeb, TargetPlatform;

// /// Default [FirebaseOptions] for use with your Firebase apps.
// ///
// /// Example:
// /// ```dart
// /// import 'firebase_options.dart';
// /// // ...
// /// await Firebase.initializeApp(
// ///   options: DefaultFirebaseOptions.currentPlatform,
// /// );
// /// ```
// class DefaultFirebaseOptions {
//   static FirebaseOptions get currentPlatform {
//     if (kIsWeb) {
//       return web;
//     }
//     switch (defaultTargetPlatform) {
//       case TargetPlatform.android:
//         return android;
//       case TargetPlatform.iOS:
//         return ios;
//       case TargetPlatform.macOS:
//         return macos;
//       case TargetPlatform.windows:
//         return windows;
//       case TargetPlatform.linux:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for linux - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       default:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions are not supported for this platform.',
//         );
//     }
//   }

//   static const FirebaseOptions web = FirebaseOptions(
//     apiKey: 'AIzaSyDgEaPRd1V47UZwKo99z02Ql0Ukgtt8hq8',
//     appId: '1:205080018425:web:ecaf013960322bc608d128',
//     messagingSenderId: '205080018425',
//     projectId: 'fantasy-auf',
//     authDomain: 'fantasy-auf.firebaseapp.com',
//     storageBucket: 'fantasy-auf.firebasestorage.app',
//     measurementId: 'G-Q0H3P3JSQ5',
//   );

//   static const FirebaseOptions android = FirebaseOptions(
//     apiKey: 'AIzaSyD8PSD67MSR8NjMXuq29DzqQgO4fv9Zw_c',
//     appId: '1:205080018425:android:f4f6c31497867daa08d128',
//     messagingSenderId: '205080018425',
//     projectId: 'fantasy-auf',
//     storageBucket: 'fantasy-auf.firebasestorage.app',
//   );

//   static const FirebaseOptions ios = FirebaseOptions(
//     apiKey: 'AIzaSyA2LbXltfRh16jQ92-1Ew-WqUnD0_lqZgI',
//     appId: '1:205080018425:ios:00778da31ef152ad08d128',
//     messagingSenderId: '205080018425',
//     projectId: 'fantasy-auf',
//     storageBucket: 'fantasy-auf.firebasestorage.app',
//     iosBundleId: 'com.example.fantasyAuf',
//   );

//   static const FirebaseOptions macos = FirebaseOptions(
//     apiKey: 'AIzaSyA2LbXltfRh16jQ92-1Ew-WqUnD0_lqZgI',
//     appId: '1:205080018425:ios:00778da31ef152ad08d128',
//     messagingSenderId: '205080018425',
//     projectId: 'fantasy-auf',
//     storageBucket: 'fantasy-auf.firebasestorage.app',
//     iosBundleId: 'com.example.fantasyAuf',
//   );

//   static const FirebaseOptions windows = FirebaseOptions(
//     apiKey: 'AIzaSyDgEaPRd1V47UZwKo99z02Ql0Ukgtt8hq8',
//     appId: '1:205080018425:web:b32e505653910ec208d128',
//     messagingSenderId: '205080018425',
//     projectId: 'fantasy-auf',
//     authDomain: 'fantasy-auf.firebaseapp.com',
//     storageBucket: 'fantasy-auf.firebasestorage.app',
//     measurementId: 'G-T9BXWJK1EJ',
//   );
// }

import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseOptions {
  static const FirebaseOptions currentPlatform = web;

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDgEaPRd1V47UZwKo99z02Ql0Ukgtt8hq8',
    appId: '1:205080018425:web:ecaf013960322bc608d128',
    messagingSenderId: '205080018425',
    projectId: 'fantasy-auf',
    authDomain: 'fantasy-auf.firebaseapp.com',
    storageBucket:
        'fantasy-auf.appspot.com', // Corregido, el dominio parece erróneo
    measurementId: 'G-Q0H3P3JSQ5',
  );
}
