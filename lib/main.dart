import 'package:flutter/material.dart';
import 'package:mortgageauction/pages/loginscreen.dart';
import 'package:mortgageauction/pages/mortgagelist.dart';
import 'package:mortgageauction/pages/userscreen.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const LoginScreen(),
        '/userhome': (context) => const UserScreen(),
        '/auctionMortgageList': (context) => const MortgageList(),
      },
    ),
  );
}
