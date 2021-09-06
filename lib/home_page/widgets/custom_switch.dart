import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../cardController.dart';

// ignore: must_be_immutable
class CustomSwitch extends StatefulWidget {
  CardController cardController;
  final Color activeColor; 
   CustomSwitch({
    Key? key,
     required this.activeColor,
     required this.cardController,
  }) : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}
class _CustomSwitchState extends State<CustomSwitch> {

  @override
  Widget build(BuildContext context) {
    return 
    GetBuilder<CardController>(
      builder: (_){
        return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.linear,
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 0),
      decoration: BoxDecoration(
        color:widget.cardController.value.value?Theme.of(context).scaffoldBackgroundColor: Colors.grey.withOpacity(0.7),
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: AnimatedAlign(
        duration: Duration(milliseconds:500),
        alignment: widget.cardController.value.value?Alignment.centerLeft:Alignment.centerRight,
        child:InkWell(
          onTap: (){
            widget.cardController.changeValue();
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds:500),
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: widget.cardController.value.value?widget.activeColor: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
      height: 20,
      width: 40,
    );
      });
    
  }
}
