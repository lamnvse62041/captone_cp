import 'package:cp_system/pages/new_page.dart';
import 'package:cp_system/widgets/sumi_button.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "back to home ",
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/jpgs/coffee_bg.jpeg'),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Image.network(
                'https://ippeducation.vn/data/media/2236/images/1413447171644.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SumiButton(
              test: "Sumi",
              icon: 'assets/svgs/console.svg',
              funcion: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewPage()),
                );
              },
              color: Colors.yellow ,
            ),
            // SumiButton(test: test, icon: icon, funcion: funcion, color: color)
          ],
        ),

      ),
    );
  }
}
