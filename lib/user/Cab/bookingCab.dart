import 'package:ats/admin/adminLogin.dart';
import 'package:ats/user/Cab/pay_cab.dart';
import 'package:flutter/material.dart';

class BookingCab extends StatefulWidget {
  const BookingCab({super.key});

  @override
  State<BookingCab> createState() => _BookingCabState();
}

class _BookingCabState extends State<BookingCab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 250, 250, 245),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.navigate_before),
          color: const Color.fromARGB(198, 63, 63, 63),
        ),
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 65),
          child: Text(
            'Booking',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Image.asset('assets/lambo.png'),
          ),
          const Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                'LAMBORGINI Huracan',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                'Price : 3.75 Cr',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const SizedBox(height: 3),
          const Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text('Discrpition'),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
            child: Text(
              ' Displacement5,204 cm³ (317.57 cu in) · Max. power640 CV (470 kW) @ 8,000 rpm · Top speedkm/h >325 (mph > 202) · Acceleration 0-100 km/h ( ...',
              style: TextStyle(fontSize: 11),
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Date"),
                      const SizedBox(
                        height: 8,
                      ),
                      TextField(
                        decoration: inputDeco(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Time"),
                      const SizedBox(
                        height: 8,
                      ),
                      TextField(
                        decoration: inputDeco(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text('Pickup Point'),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextField(
                    decoration: textdeco(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Text('Drop Off'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: TextField(
                      decoration: textdeco(),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const PayCab();
                              },
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 115),
                          backgroundColor: const Color(0xFF19345D),
                          foregroundColor:
                              const Color.fromARGB(255, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'Book',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration inputDeco() {
    return const InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      contentPadding: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 12,
      ),
    );
  }
}

InputDecoration textdeco() {
  return const InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))));
}
