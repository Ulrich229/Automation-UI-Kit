import 'package:flutter/material.dart';

import '../../colors.dart';

class AddDevice extends StatelessWidget {
  const AddDevice({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Container(
            padding: EdgeInsets.all(20),
            height: deviceSize.height / 7,
            width: deviceSize.width / 2.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Theme.of(context).scaffoldBackgroundColor,
                border: Border.all(
                    width: 1,
                    color:Colors.grey.withOpacity(0.5))),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Container(
          alignment: Alignment.center,
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            border: Border.all(width: 0.5, color: Colors.grey.withOpacity(0.5)),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Icon(Icons.add, color: Colors.black,),
        ),
        Text("Add\nNew", style: TextStyle(color: blue,),)
              ],
            ),
          );
  }
}