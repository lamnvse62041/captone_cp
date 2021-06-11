import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonSetting extends StatelessWidget {
  final String icon;
  final String text;
  final Function function;
  final Color color;
  final String sound;

  const ButtonSetting({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.function,
    this.color,
    this.sound,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.blue[900],
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: text,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: Colors.white),
                children: <TextSpan>[
                  TextSpan(
                    text: sound,
                    style: TextStyle(color: color),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 14,
              left: 30,
            ),
            child: SvgPicture.asset(
              icon,
              height: 40,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
