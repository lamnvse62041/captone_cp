import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SumiButton extends StatelessWidget {
  final String test;
  final String icon;
  final Function funcion;
  final Color color;

  const SumiButton(
      {Key key,
      @required this.test,
      @required this.icon,
      @required this.funcion,
      @required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: funcion,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Text(
              test,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 24, left: 30),
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
