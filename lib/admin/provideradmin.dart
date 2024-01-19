import 'package:flutter/material.dart';

class ProviderAdmin extends StatefulWidget {
  const ProviderAdmin({super.key});

  @override
  State<ProviderAdmin> createState() => _ProviderAdminState();
}

class _ProviderAdminState extends State<ProviderAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 16, 91),
        title: const Text(
          'Provider',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
