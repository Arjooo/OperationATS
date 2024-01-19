import 'package:ats/screens/blankpage.dart';
import 'package:ats/user/UserModule.dart';
import 'package:ats/user/Cab/bookingCab.dart';
import 'package:flutter/material.dart';

class PaySuccess extends StatefulWidget {
  const PaySuccess({super.key});

  @override
  State<PaySuccess> createState() => _PaySuccessState();
}

class _PaySuccessState extends State<PaySuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 150),
        child: Column(
          children: [
            Image.asset('assets/check 2.png'),
            const Center(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'PAYMENT SUCCESS',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const BlankPage();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 115),
                  backgroundColor: const Color(0xFF19345D),
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              child: const Text('Done'),
            )
          ],
        ),
      ),
    );
  }
}
