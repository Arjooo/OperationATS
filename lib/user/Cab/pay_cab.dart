import 'package:ats/user/PaySucces.dart';
import 'package:flutter/material.dart';

class PayCab extends StatefulWidget {
  const PayCab({super.key});

  @override
  State<PayCab> createState() => _PayCabState();
}

class _PayCabState extends State<PayCab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Payment'),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const PaySuccess();
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
            child: const Text(
              'Pay',
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
