import 'package:flutter/material.dart';

class MortgageList extends StatefulWidget {
  const MortgageList({Key? key}) : super(key: key);

  @override
  State<MortgageList> createState() => _MortgageListState();
}

class _MortgageListState extends State<MortgageList> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Text('Mortgage List'),
    );
  }
}
