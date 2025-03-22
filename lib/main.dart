import 'package:flutter/material.dart';
import 'package:homigo/view/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'model/category_model.dart';
import 'model/message_model.dart';
import 'model/place_model.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: UploadDataInFirebase(),
    );
  }
}

class UploadDataInFirebase extends StatelessWidget {
  const UploadDataInFirebase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          savePlace();
          saveMessage();
          saveCategory();
        }, child: const Text("Upload Data")),
      ),
    );
  }
}

