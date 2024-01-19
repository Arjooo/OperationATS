import 'package:flutter/material.dart';

class PaymentCab extends StatefulWidget {
  const PaymentCab({super.key});

  @override
  State<PaymentCab> createState() => _PaymentCabState();
}

class _PaymentCabState extends State<PaymentCab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Payment',
          style: TextStyle(fontSize: 30),
        )),
      ),
    );
  }
}
