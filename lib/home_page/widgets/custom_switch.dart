import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../cardController.dart';

// ignore: must_be_immutable
class CustomSwitch extends StatefulWidget {
  final Color activeColor; 
  final String device;
   CustomSwitch({
    Key? key,
     required this.activeColor,
     required this.device
  }) : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}
class _CustomSwitchState extends State<CustomSwitch> {

  @override
  Widget build(BuildContext context) {
    return 
    GetBuilder<CardController>(
      builder: (controller){
        return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.linear,
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 0),
      decoration: BoxDecoration(
        color:controller.devices[widget.device]!?Theme.of(context).scaffoldBackgroundColor: Colors.grey.withOpacity(0.7),
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: AnimatedAlign(
        duration: Duration(milliseconds:500),
        alignment: controller.devices[widget.device]!?Alignment.centerLeft:Alignment.centerRight,
        child:InkWell(
          onTap: (){
            controller.changeValue(widget.device);
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds:500),
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: controller.devices[widget.device]!?widget.activeColor: Colors.white,
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
