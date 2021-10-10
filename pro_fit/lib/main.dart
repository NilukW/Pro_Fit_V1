import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pro_fit/auth/signup.dart';
import 'package:pro_fit/home.dart';

import 'auth/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProFitApp());
}

class ProFitApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    Login.tag: (context) => Login(),
    Home.tag: (context) => Home(),
    SignUp.tag: (context) => SignUp(),
  };
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: MaterialApp(
          title: 'Pro Fit',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MaterialApp(
            title: 'Login',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blueGrey,
              fontFamily: 'Nunito',
            ),
            darkTheme: ThemeData.dark(),
            home: Login(),
            routes: routes,
          )),
    );
  }
}
