import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste_calendar/presenter/google_sign_in.dart';

import 'presenter/home_page/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {

  static const String title = 'MainPage';

  const MyApp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => GoogleSignInProvider(),
     child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          home: HomePage(),
         ),
   );
  
}


