import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_switch.dart';
import '../../cardController.dart';

class ControlCard extends StatefulWidget {
  final Color activeColor;
  final String device;
  final String imagePath;
  const ControlCard(
      {Key? key,
      required this.activeColor,
      required this.device,
      required this.imagePath,})
      : super(key: key);

  @override
  _ControlCardState createState() => _ControlCardState();
}

class _ControlCardState extends State<ControlCard> {
  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return GetBuilder<CardController>(
      init: CardController(),
      builder: (controller) {
      return AnimatedContainer(
        duration: Duration(milliseconds: 500),
        padding: EdgeInsets.all(20),
        height: deviceSize.height / 3.5,
        width: deviceSize.width / 2.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: controller.devices[widget.device]!
                ? widget.activeColor
                : Theme.of(context).scaffoldBackgroundColor,
            border: Border.all(
                width: 1,
                color: controller.devices[widget.device]!
                    ? widget.activeColor
                    : Colors.grey.withOpacity(0.5))),
        child: Column(
          children: [
            Expanded(
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                margin: EdgeInsets.only(bottom: 20),
                height: deviceSize.height / 10,
                width: deviceSize.height / 10,
                child: Image.asset(
                  widget.imagePath,
                  color: controller.devices[widget.device]!
                      ? Theme.of(context).scaffoldBackgroundColor
                      : widget.activeColor,
                ),
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Smart",
                        style: TextStyle(
                            color: controller.devices[widget.device]!
                                ? Theme.of(context).scaffoldBackgroundColor
                                : widget.activeColor,
                            fontSize: 17),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.device,
                        style: TextStyle(
                            color: controller.devices[widget.device]!
                                ? Theme.of(context).scaffoldBackgroundColor
                                : widget.activeColor,
                            fontSize: 17),
                      )
                    ],
                  ),
                  RotatedBox(
                    quarterTurns: 1,
                    child: CustomSwitch(
                      activeColor: widget.activeColor,
                      device:widget.device
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
