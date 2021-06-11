import 'package:flutter/material.dart';

class CommonButton2 extends StatelessWidget {
  final IconData icon;
  final Function function;
  const CommonButton2({
    Key key,
    @required this.icon,
    @required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 26,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}
