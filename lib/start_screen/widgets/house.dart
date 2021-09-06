import 'package:flutter/material.dart';

class House extends StatelessWidget {
  const House({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      height: deviceSize.height / 2.2,
      width: deviceSize.height / 2.2,
      alignment: Alignment.bottomCenter,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            height: deviceSize.height / 2.5,
            width: deviceSize.height / 2.5,
            decoration: BoxDecoration(
              color: Colors.amber.withOpacity(0.07),
              shape: BoxShape.circle
            ),
          ),

        ],
      ),
    );
  }
}
