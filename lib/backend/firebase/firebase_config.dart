import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDl7eGMaHRs-SrXb5_XVjEa_oTvrf6DysU",
            authDomain: "smartattendance-9edcd.firebaseapp.com",
            projectId: "smartattendance-9edcd",
            storageBucket: "smartattendance-9edcd.appspot.com",
            messagingSenderId: "1035173033289",
            appId: "1:1035173033289:web:214db13a2ff272c925d698"));
  } else {
    await Firebase.initializeApp();
  }
}
