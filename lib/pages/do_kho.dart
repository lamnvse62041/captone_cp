import 'package:cp_system/pages/new_page.dart';
import 'package:cp_system/widgets/setting_button.dart';
import 'package:flutter/material.dart';

class DoKho extends StatefulWidget {
  const DoKho({Key key}) : super(key: key);

  @override
  _DoKhoState createState() => _DoKhoState();
}

class _DoKhoState extends State<DoKho> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      contentPadding: const EdgeInsets.all(0),
      backgroundColor: Colors.teal,
      title: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'Chon Do Kho',
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.white),
            ),
          ),
          Positioned(
            right: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            color: Colors.white,
            thickness: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          ButtonSetting(
              icon: 'assets/svgs/console.svg',
              text: 'Thuong',
              function: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NewPage()),
                );
              },
              ),
               ButtonSetting(
              icon: 'assets/svgs/console.svg',
              text: 'Nhanh',
              function: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NewPage()),
                );
              },
              ),
               const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
