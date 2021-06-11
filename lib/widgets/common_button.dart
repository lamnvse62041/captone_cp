import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonButton extends StatelessWidget {
  final String icon;
  final String text;
  final Function function;
  final Color color;
  final double paddingIcon;
  // final IconData iconButton;

  const CommonButton({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.function,
    @required this.color,
    this.paddingIcon = 40,
    // @required this.iconButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 26,
              left: paddingIcon,
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
