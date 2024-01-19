import 'package:flutter/material.dart';

class CustomerAdmin extends StatefulWidget {
  const CustomerAdmin({super.key});

  @override
  State<CustomerAdmin> createState() => _CostumerAdminState();
}

class _CostumerAdminState extends State<CustomerAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 23, 3, 123),
        title: const Text(
          'Customer',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
