import 'package:flutter/material.dart';

class CabHome extends StatefulWidget {
  const CabHome({super.key});

  @override
  State<CabHome> createState() => _CabHomeState();
}

class _CabHomeState extends State<CabHome> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: SizedBox(
          height: 30,
          child: Text(
            'Available Cab',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
