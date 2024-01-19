import 'package:flutter/material.dart';

class ViewList extends StatefulWidget {
  const ViewList({super.key});

  @override
  State<ViewList> createState() => _ViewListState();
}

class _ViewListState extends State<ViewList> {
List<String> items= ["item1","item2","item3","item4","item5","item6"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View'),
      centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Card(shadowColor: Color.fromARGB(255, 31, 28, 28),
              child: Text(items[index])),
            subtitle: Text('Subtitle for ${items[index]}'),
            onTap: () {
              
            },
          );
   }
   ),
    ) ;
  }
}