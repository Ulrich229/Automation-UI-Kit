import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/menu_header.dart';
import 'widgets/menu_greating.dart';
import 'widgets/weather.dart';
import 'widgets/control_card.dart';
import 'widgets/add_device.dart';
import '../cardController.dart';
import '../../colors.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + 10,
              left: 20,
              right: 20),
          height: deviceSize.height,
          width: deviceSize.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MenuHeader(deviceSize: deviceSize),
              SizedBox(
                height: 10,
              ),
              MenuGreating(),
              SizedBox(
                height: 30,
              ),
              Weather(),
              SizedBox(
                height: 20,
              ),
              Text("Devices"),
              SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ControlCard(
                                activeColor: blue,
                                device: 'Light',
                                imagePath: 'assets/images/lightbulb.png',
                              ),
                              SizedBox(height:20),
                              ControlCard(
                                activeColor: pink1,
                                device: 'Heater',
                                imagePath: 'assets/images/thermometer.png',
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              AddDevice(),
                              SizedBox(height:20),
                              ControlCard(
                                activeColor: pink1,
                                device: 'AC',
                                imagePath: 'assets/images/air-conditioner.png',
                              ),
                              SizedBox(height:20),
                              ControlCard(
                                activeColor: green,
                                device: 'Fan',
                                imagePath: 'assets/images/fan.png',
                              ),
                            ],
                          ),
                        ]),
                  ),
                ),
            ],
          )),
    );
  }
}
