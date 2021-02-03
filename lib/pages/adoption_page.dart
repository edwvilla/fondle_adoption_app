import 'package:flutter/material.dart';
import 'package:fondle/colours.dart';
import 'package:fondle/widgets/gradient_backgroud.dart';
import 'package:fondle/widgets/rounded_button.dart';
import 'package:google_fonts/google_fonts.dart';

class AdoptionPage extends StatelessWidget {
  static const String id = 'adoption_page';
  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      topColor: Colours.lightTeal,
      bottomColor: Colours.darkTeal,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: <Widget>[
            _buildPuppyImage(),
            _buildCardInfo(context),
          ],
        ),
      ),
    );
  }

  Align _buildCardInfo(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'BOLT',
                      style: GoogleFonts.oswald(
                        color: Colours.darkTeal,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      '2 YEAR OLD',
                      style: GoogleFonts.oswald(
                        color: Colours.darkTeal,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Dalmatian dog',
                      style: GoogleFonts.oswald(
                        color: Colours.darkTeal,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'male',
                      style: GoogleFonts.oswald(
                        color: Colours.darkTeal,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Divider(thickness: 1.0),
                const SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 23,
                      child: ClipOval(
                        child: Image.asset('assets/profile.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'John Doe',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Owner',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '18 Oct 2019',
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sed lacus ac libero efficitur convallis at vel libero. In id lacinia justo. In ullamcorper leo enim, non congue diam venenatis ut. Pellentesque viverra tellus ac enim sagittis, convallis efficitur erat hendrerit. Suspendisse varius nisl ac mauris sagittis vulputate. Cras mollis elit eget nisl pulvinar, vel mattis nisi posuere. Vestibulum leo augue, blandit quis imperdiet quis, vehicula at sapien.',
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 15),
                RoundedButton(
                  backgroundColor: Colours.darkTeal,
                  fontColor: Colors.white,
                  onPressed: () => Navigator.of(context).pop(),
                  title: 'Adoption',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column _buildPuppyImage() {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Image.asset(
            'assets/dalmatian.png',
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: Container(),
        ),
      ],
    );
  }
}
