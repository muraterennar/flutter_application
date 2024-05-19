import 'package:flutter/material.dart';

class ListTileLeadrn extends StatelessWidget {
  const ListTileLeadrn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
       body: const Column(
        children:[
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            subtitle: Text('Home sweet home'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
       ),
    );
  }
}