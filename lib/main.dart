import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late FirebaseMessaging _firebaseMessaging;

  getNotif() {
    _firebaseMessaging.requestNotificationPermissions();
    _firebaseMessaging.subscribeToTopic('topicksTalk');
    _firebaseMessaging.configure(
      // Ketika Aplikasi tertutup Atau Terminate
      onLaunch: (Map<String, dynamic> message) async {},
      // Ketika Aplikasi Terbuka
      onMessage: (Map<String, dynamic> message) async {},
      // Ketika Aplikasi keadaan di background
      onResume: (Map<String, dynamic> message) async {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: new AppBar(
          //Menembahkan Title/Judul
          title: new Text('Belajar Flutter'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                child: Text("Notifikasi Sukses"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // background
                  onPrimary: Colors.white, // foreground
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Notifikasi Fail"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // background
                  onPrimary: Colors.white, // foreground
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Notifikasi Info"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // background
                  onPrimary: Colors.white, // foreground
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
