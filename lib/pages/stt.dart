import 'package:cp_system/widgets/common_button.dart';
import 'package:flutter/material.dart';

class SttSumi extends StatefulWidget {
  const SttSumi({Key key}) : super(key: key);

  @override
  _SttSumiState createState() => _SttSumiState();
}

class _SttSumiState extends State<SttSumi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(top:20),
      child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.only(top: 10),
          color: Colors.purple,
          width: MediaQuery.of(context).size.width,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
             GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(26),
                    bottomRight: Radius.circular(26),
                  ),
                ),
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              
            ),
            questionButton(),
            
          ])),
    ));
  }
}

class questionButton extends StatelessWidget {
  const questionButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     child: Stack(
        children: [
          Container(
    width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.all(2),
    margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
    decoration: BoxDecoration(
      color: Colors.pink,
      borderRadius: BorderRadius.circular(14),
    ),
    child: Text(
      "1                         000000000",
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline6.copyWith(
            color: Colors.white,
          ),
    ),
    
          ),
        ],
      ),
    );
  }
}
