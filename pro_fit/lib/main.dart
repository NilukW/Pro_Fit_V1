import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pro_fit/auth/signup.dart';
import 'package:pro_fit/home.dart';

import 'auth/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProFitApp());
}

class ProFitApp extends StatefulWidget {
  @override
  _ProFitAppState createState() => _ProFitAppState();
}

class _ProFitAppState extends State<ProFitApp> {
  final routes = <String, WidgetBuilder>{
    Login.tag: (context) => Login(),
    Home.tag: (context) => Home(),
    SignUp.tag: (context) => SignUp(),
  };

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        FocusScope.of(context).requestFocus(new FocusNode());
        if (!await ConnectivityWrapper.instance.isConnected) {
          showNoConnection();
        }
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

  void showNoConnection() {
    Fluttertoast.showToast(
      msg: "No internet connection available ",
      toastLength: Toast.LENGTH_SHORT,
      textColor: Colors.black,
      fontSize: 16,
      backgroundColor: Colors.grey[200],
    );
  }
}
