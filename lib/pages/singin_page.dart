import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:fondle/colours.dart';
import 'package:fondle/pages/adoption_page.dart';
import 'package:fondle/widgets/gradient_backgroud.dart';
import 'package:fondle/widgets/rounded_button.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatelessWidget {
  static const String id = 'signin_page';
  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      topColor: Colours.lightRed,
      bottomColor: Colours.darkRed,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            const SizedBox(width: double.infinity),
            _buildInfoHeader(context),
            _buildImageFooter()
          ],
        ),
      ),
    );
  }

  Expanded _buildInfoHeader(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 4,
            child: Center(
              child: Text(
                'FONDLE',
                style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontSize: 75,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              'Happy home for a pet is a\nhappy home for you',
              textAlign: TextAlign.center,
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontSize: 18,
                letterSpacing: .5,
              ),
            ),
          ),
          RoundedButton(
            fontColor: Colors.black87,
            backgroundColor: Colors.white,
            title: 'Sign in',
            onPressed: () => Navigator.of(context).pushNamed(AdoptionPage.id),
          ),
        ],
      ),
    );
  }

  Expanded _buildImageFooter() {
    return Expanded(
      // used transform to flip on Y axis (mirror effect) my image asset
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(math.pi),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Image.asset(
            'assets/doberman.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
