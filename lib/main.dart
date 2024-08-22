import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubefyn_kitchen/start.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDucs2_W-pOqQj5eiPFSGIcwmSbi_b-qYY",
          appId: "1:68316417205:android:c7da73a83d5b780a1202fc",
          messagingSenderId: "68316417205",
          projectId: "qubefyn-kitchen"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        debugShowCheckedModeBanner: false, home: StartPage());
  }
}
