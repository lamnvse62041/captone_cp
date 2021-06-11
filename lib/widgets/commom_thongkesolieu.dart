import 'package:flutter/material.dart';

class ThongKeSoLieuPage extends StatelessWidget {
  final String text;
  final String soLieu;
  const ThongKeSoLieuPage({
    Key key,
    @required this.text,
    this.soLieu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: Colors.white),
            // textAlign: TextAlign.start,
          ),
          Text(
            soLieu,
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
