// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyLandingPage extends StatelessWidget {
  const MyLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.black,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).restorablePushNamed('MyMainPage');
                  },
                  child: Hero(
                    tag: 'sticker',
                    child: CircleAvatar(
                      child: Image(
                          image: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/146/146029.png?w=826&t=st=1677778805~exp=1677779405~hmac=4dbc5c62e65d844117ed854dd9b1055cb8f199aea461236ab09e5d072b1586d7')),
                    ),
                  ),
                ),
              ),
              actions: <Widget>[
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Photos',
                      style:
                          GoogleFonts.roboto(fontSize: 24, color: Colors.grey),
                    )),
                SizedBox(width: 10),
                TextButton(
                    onPressed: () {},
                    child: Text('About',
                        style: GoogleFonts.roboto(
                            fontSize: 24, color: Colors.grey)))
              ],
            ),
            body: Center(
              child: Container(child: Text('Bonjour')),
            ),
          ),
        ),
      ),
    );
  }
}
