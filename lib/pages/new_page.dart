// stf enter, đặt tên
//import
import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({Key key}) : super(key: key);

  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sumi",
        ),
      ),
      body: Center(
        child: Text(
          'Sumi Sumi',
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        // currentIndex: ,
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
