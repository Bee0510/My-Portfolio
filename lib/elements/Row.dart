// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

Row per_cont(BuildContext context, String heading, String subheading,
    String image, String URL) {
  LaunchURL() async {
    final Url = URL;
    final uri = Uri.parse(Url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw Exception('Unable to load $Url');
    }
  }

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(heading,
                style: GoogleFonts.kanit(fontSize: 60, color: Colors.black)),
            Text(subheading,
                style: GoogleFonts.roboto(
                    fontSize: 10,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 80),
            SizedBox(
              width: 300,
              child: Text(
                  'Designing features for the most interesting social audio app. More soon!',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  )),
            ),
            SizedBox(height: 80),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  fixedSize: Size(100, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: LaunchURL,
              child: Text(
                'Git Link',
                style: GoogleFonts.oswald(fontSize: 18, letterSpacing: 2),
              ),
            ),
          ]),
      InkWell(
        splashColor: Colors.black,
        onTap: LaunchURL,
        child: Image.asset(
          image,
          width: MediaQuery.of(context).size.width * 0.25,
          fit: BoxFit.contain,
          scale: 3.5,
        ),
      ),
    ],
  );
}
