import 'package:flutter/material.dart';

class CommonBackground extends StatelessWidget {
  const CommonBackground({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/pngs/mask1.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/pngs/mask2.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/pngs/mask3.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
