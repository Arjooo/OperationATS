import 'package:ats/admin/AddAccessories.dart';
import 'package:ats/screens/BuyPage.dart';
import 'package:flutter/material.dart';

class AccessoriesPage extends StatelessWidget {
  const AccessoriesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Accessories',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const AddAccessories();
                  },
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Container(
                height: 80,
                width: 350,
                decoration: ShapeDecoration(
                  color: const Color.fromARGB(255, 229, 235, 244),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  image: const DecorationImage(
                    image: AssetImage('assets/brake.png'),
                    alignment: Alignment.bottomLeft,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 110, vertical: 10),
                  child: Column(
                    children: [
                      Text(
                        'Brake Pad',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'BMW M2 series',
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        '\$500',
                        style: TextStyle(
                          color: Color(0xFF102FA1),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const AddAccessories();
                  },
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              child: Container(
                height: 80,
                width: 350,
                decoration: ShapeDecoration(
                  color: const Color.fromARGB(255, 229, 235, 244),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  image: const DecorationImage(
                    image: AssetImage('assets/chain lube.jpeg'),
                    alignment: Alignment.bottomLeft,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 110, vertical: 10),
                  child: Column(
                    children: [
                      Text(
                        'Chain Lube',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Spray lube',
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        '\$200',
                        style: TextStyle(
                          color: Color(0xFF102FA1),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const AddAccessories();
                  },
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              child: Container(
                height: 80,
                width: 350,
                decoration: ShapeDecoration(
                  color: const Color.fromARGB(255, 229, 235, 244),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  image: const DecorationImage(
                    image: AssetImage('assets/bike exhaust.jpg'),
                    alignment: Alignment.bottomLeft,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 110, vertical: 10),
                  child: Column(
                    children: [
                      Text(
                        'Bike Exhaust',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Yamaha Bikes',
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        '\$600',
                        style: TextStyle(
                          color: Color(0xFF102FA1),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const AddAccessories();
                  },
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Container(
                height: 80,
                width: 350,
                decoration: ShapeDecoration(
                  color: const Color.fromARGB(255, 229, 235, 244),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  image: const DecorationImage(
                    image: AssetImage('assets/car muffler.jpeg'),
                    alignment: Alignment.bottomLeft,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 110, vertical: 10),
                  child: Column(
                    children: [
                      Text(
                        'Car Exhaust',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Muffler',
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        '\$250',
                        style: TextStyle(
                          color: Color(0xFF102FA1),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 80),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const AddAccessories();
                }));
                const Icon(Icons.add);
              },
              backgroundColor: const Color.fromARGB(255, 1, 38, 68),
            ),
          )
        ],
      ),
    );
  }
}
