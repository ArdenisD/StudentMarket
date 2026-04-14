import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAqCCyO1OZHvHyVQcMC119EdF_BEFdsf-Y",
            authDomain: "student-market-q1ib93.firebaseapp.com",
            projectId: "student-market-q1ib93",
            storageBucket: "student-market-q1ib93.firebasestorage.app",
            messagingSenderId: "248213702035",
            appId: "1:248213702035:web:be2be71163c94736b85466",
            measurementId: "G-SWL1G25DY8"));
  } else {
    await Firebase.initializeApp();
  }
}
