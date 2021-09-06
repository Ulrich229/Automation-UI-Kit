import 'package:flutter/material.dart';

class Greating extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  final Size deviceSize = MediaQuery.of(context).size;
    return Container(
      height: deviceSize.height / 12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 6,
            child: Text(
              'Hi Hira',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Expanded(
              child: Container(
            height: 45,
            decoration: BoxDecoration(
              image:DecorationImage(image: AssetImage('assets/images/avatar.jpg')),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.grey.withOpacity(0.5), width: 1)),
          )),
        ],
      ),
    );
  }
}