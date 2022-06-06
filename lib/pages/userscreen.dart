import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Stack(children: [
              Positioned(
                top: -175,
                left: 0,
                child: Container(
                  width: 400,
                  height: 400,
                  decoration: const BoxDecoration(
                    color: Color(0x304599ff),
                    borderRadius: BorderRadius.all(
                      Radius.circular(500),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: -10,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Color(0x30cc33ff),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                ),
              ),
              Positioned(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 50,
                    sigmaY: 50,
                  ),
                  child: Container(),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      _userScreenHeaderLabel(),
                      const SizedBox(
                        height: 15,
                      ),
                      _userAvatar(),
                      const SizedBox(
                        height: 15,
                      ),
                      _userNameLabel(),
                      const SizedBox(
                        height: 20,
                      ),
                      _userDataRow("DOB", "12/12/89"),
                      const SizedBox(
                        height: 15,
                      ),
                      _userDataRow("PAN", "GGGPG1234G"),
                      const SizedBox(
                        height: 15,
                      ),
                      _userDataRow("UID Number", "222211113333"),
                      const SizedBox(
                        height: 15,
                      ),
                      _userDataRow(
                          "Address", "123 Tower 3 City Society \n chomu state 08"),
                      const SizedBox(
                        height: 15,
                      ),
                      _userDataRow("Pincode", "303704"),
                      const SizedBox(
                        height: 15,
                      ),
                      _userDataRow("Phone", "8899778899"),
                      const SizedBox(
                        height: 15,
                      ),
                      _userDataRow("CV Score", "669"),
                      const SizedBox(
                        height: 15,
                      ),
                      _showAuctionMortageList(context),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget _userNameLabel() {
    return Center(
      child: Text(
        "Shyam Kumar",
        style: GoogleFonts.josefinSans(
          textStyle: const TextStyle(
            color: Color(0xff164276),
            fontWeight: FontWeight.w900,
            fontSize: 34,
          ),
        ),
      ),
    );
  }

  Widget _userAvatar() {
    return const Center(
      child: SizedBox(
        child: CircleAvatar(
          backgroundImage: AssetImage('asserts/id-1.jpg'),
          radius: 35.0,
        ),
        height: 80,
      ),
    );
  }

  Widget _showAuctionMortageList(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushReplacementNamed(
          context,
          '/auctionMortgageList',
        );
      },
      child: const Text('Mortgage List Screen'),
    );
  }

  Widget _userScreenHeaderLabel() {
    return Center(
      child: Text(
        "User Details Screen",
        style: GoogleFonts.josefinSans(
          textStyle: const TextStyle(
            color: Color(0xff164276),
            fontWeight: FontWeight.w900,
            fontSize: 34,
          ),
        ),
      ),
    );
  }

  Widget _userDataRow(String userDataHeaderText, String userDataValueText) {
    return Row(
      children: [
        Text(userDataHeaderText),
        const Divider(
          height: 20,
          thickness: 5,
          indent: 20,
          endIndent: 0,
          color: Colors.black,
        ),
        Text(userDataValueText),
      ],
    );
  }
}
