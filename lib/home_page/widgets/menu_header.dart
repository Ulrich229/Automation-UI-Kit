import 'package:flutter/material.dart';

class MenuHeader extends StatelessWidget {
  const MenuHeader({
    Key? key,
    required this.deviceSize,
  }) : super(key: key);

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: deviceSize.height / 30,
          width: deviceSize.height / 30,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/menu.png'))),
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/avatar.jpg"),
            ),
            shape: BoxShape.circle
          ),
        )
      ],
    );
  }
}
