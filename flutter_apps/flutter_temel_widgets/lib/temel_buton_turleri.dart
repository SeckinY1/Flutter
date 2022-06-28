import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextButton(onPressed: () {}, child: Text("Text Button")),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text("Icon with Text Button"),
            style: TextButton.styleFrom(primary: Colors.purple),
          ),
          ElevatedButton(
            onPressed: () {
              
            },
            child: Text("Elevated Button"),
            style: ElevatedButton.styleFrom(primary: Colors.red),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text("Icon with Elevated Button"),
          ),
          OutlinedButton(onPressed: () {}, child: Text("Outlined Button")),
          OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text("Icon with Outlined Button"),
              style: OutlinedButton.styleFrom())
        ],
      ),
    );
  }
}
