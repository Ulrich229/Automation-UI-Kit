import 'package:flutter/material.dart';

class Weather extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: deviceSize.height/8,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,3),
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 5
          ),
          BoxShadow(
            offset: Offset(2,2),
            color: Colors.grey.withOpacity(0.05),
            blurRadius: 5
          ),
          BoxShadow(
            offset: Offset(-2,2),
            color: Colors.grey.withOpacity(0.05),
            blurRadius: 5
          ),
          BoxShadow(
            offset: Offset(0,-3),
            color: Theme.of(context).scaffoldBackgroundColor,
            blurRadius: 5
          ),
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          WeatherItem(iconPath: "assets/images/thermometer.png",info: "28° C",infoNature: "Temperature",),
         WeatherItem(iconPath: "assets/images/humidity.png",info: "54%",infoNature: "Humidity",)
        ],
      ),
    );
  }
}

class WeatherItem extends StatelessWidget {
  final String? iconPath;
  final String? info;
  final String? infoNature;
  WeatherItem({@required this.iconPath, @required this.info, @required this.infoNature});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: infoNature=='Humidity'? EdgeInsets.all(4): EdgeInsets.zero,
            width: 30,
            child: Image.asset(iconPath.toString()),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$info", style: TextStyle(fontSize: 15),),
              SizedBox(height: 5,),
              RichText(
                text: TextSpan(
                  text: "$infoNature",
                  style: TextStyle(
                    color:Colors.grey.withOpacity(0.6),
                    fontWeight: FontWeight.values[3],
                    fontSize: 10
                  )
                ),
              )

            ],
          )
        ],
      ),
    );
  }
}