import 'package:flutter/material.dart';

import '../../colors.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: ()=>Navigator.of(context).pushNamed('/homePage'),
      child: Container(
        width: deviceSize.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(
              alignment: Alignment.centerRight,
              height: deviceSize.height/12,
              width: deviceSize.height/12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: pink2
              ),
              child: Text('Get', style: TextStyle(color: blue, fontSize: 17),),
            ),
            SizedBox(width: 5,),
            Text('Started', style: TextStyle(color: blue, fontSize: 17),),
          ]
        ),
      ),
    );
  }
}