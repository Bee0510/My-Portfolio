// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, file_names, non_constant_identifier_names, unused_local_variable, constant_identifier_names
// https://cdn-icons-png.flaticon.com/512/146/146029.png?w=826&t=st=1677778805~exp=1677779405~hmac=4dbc5c62e65d844117ed854dd9b1055cb8f199aea461236ab09e5d072b1586d7

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'elements/Appbar.dart';
import 'elements/Row.dart';

class MyMainPage extends StatelessWidget {
  final modelroute = 'MyMainPage';

  @override
  Widget build(BuildContext context) {
    textnit() async {
      const URL = 'https://www.nitrkl.ac.in/';
      final url = Uri.parse(URL);
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw Exception('Error loading $URL');
      }
    }

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: Appbar(),
            body: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(height: 400),
                      Column(
                        verticalDirection: VerticalDirection.down,
                        children: <Widget>[
                          Text('Android App Developer',
                              style: GoogleFonts.kanit(
                                  fontSize: 120, color: Colors.black)),
                          Row(
                            children: <Widget>[
                              Text('Currently student at ',
                                  style: GoogleFonts.roboto(
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                              TextButton(
                                  onPressed: textnit,
                                  child: Text('NIT Rourkela',
                                      style: GoogleFonts.roboto(
                                          fontSize: 20,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          decoration:
                                              TextDecoration.underline)))
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 400),
                      per_cont(
                          context,
                          'Ethyummy',
                          'Currently student at NIT Rourkela',
                          'lib/Image/ss1.png',
                          'https://github.com/Bee0510/ETHYUMMY'),
                      SizedBox(height: 400),
                      per_cont(
                          context,
                          'Brew Crew',
                          'Currently student at NIT Rourkela',
                          'lib/Image/ss1.png',
                          'https://github.com/Bee0510/OCM-App'),
                      SizedBox(height: 400),
                      per_cont(
                          context,
                          'BMI Calculator',
                          'Currently student at NIT Rourkela',
                          'lib/Image/ss1.png',
                          'https://github.com/Bee0510/BMI_APP'),
                      SizedBox(height: 400),
                      per_cont(
                          context,
                          'Swigato',
                          'Currently student at NIT Rourkela',
                          'lib/Image/ss2.png',
                          'https://github.com/Bee0510/Swigato')
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
