import 'package:flutter/material.dart';

import '../colors.dart';
import 'widgets/greating.dart';
import 'widgets/house.dart';
import 'widgets/get_start.dart';


class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top + 10, left: 20, right: 20),
        height: deviceSize.height,
        width: deviceSize.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "September 5, 2021",
              style: TextStyle(color: pink2),
            ),
            SizedBox(
              height: 25,
            ),
            Greating(),
            RichText(
                text: TextSpan(
              text: 'Welcome to Home',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.values[2]),
            )),
            Spacer(flex: 2,),
            House(),
            Spacer(flex: 2,),
            GetStarted(),
            Spacer()

          ],
        ),
      ),
    );
  }
}


