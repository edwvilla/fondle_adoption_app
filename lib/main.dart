import 'package:flutter/material.dart';
import 'package:fondle/pages/adoption_page.dart';
import 'package:fondle/pages/singin_page.dart';

void main() => runApp(Fondle());

class Fondle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(),
      title: 'Adoption app',
      initialRoute: SignInPage.id,
      routes: <String, Widget Function(BuildContext)>{
        SignInPage.id: (BuildContext context) => SignInPage(),
        AdoptionPage.id: (BuildContext context) => AdoptionPage(),
      },
    );
  }
}
