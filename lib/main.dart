// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, deprecated_member_use, avoid_print

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _phone = Uri.parse('tel:+918270514004');
final Uri _email = Uri.parse('mailto:abishekmas0708@gmail.com');

void main() {
  runApp(MyApp());
}

// type stless to create class
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.white30,
                  backgroundImage: NetworkImage(
                    'https://yt3.ggpht.com/ytc/AKedOLS_YPLhsqO7J5s0_UKTG-Fy6d7j1OeVcsfNwHA5tQ=s900-c-k-c0x00ffffff-no-rj',
                  ),
                ),
                Text(
                  'Abishek Mahi',
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                  ),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.teal[100],
                    letterSpacing: 2.5,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150,
                  child: Divider(
                    color: Colors.teal[100],
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.call,
                      size: 20.0,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      '+91 8270514004',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal[900],
                        fontFamily: 'Source Sans Pro',
                      ),
                    ),
                    onTap: (_launchPhone),
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      size: 20.0,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      'abishekmas0708@gmail.com',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal[900],
                        fontFamily: 'Source Sans Pro',
                      ),
                    ),
                    onTap: (_launchMail),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

void _launchPhone() async {
  if (!await launchUrl(_phone)) throw 'Could not launch $_phone';
}

void _launchMail() async {
  if (!await launchUrl(_email)) throw 'Could not launch $_email';
}
