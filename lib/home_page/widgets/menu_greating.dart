import 'package:flutter/material.dart';

class MenuGreating extends StatelessWidget {
  const MenuGreating({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            RichText(
                text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    text: 'Good Morning',)),
                    SizedBox(height: 15,),
                    RichText(text: TextSpan(
                text: 'Living Room Status',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.withOpacity(0.7),
                    fontWeight: FontWeight.values[3]),
              ),
                    
                    )
          ],
        ),
        Container(
          padding: EdgeInsets.all(7),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            border: Border.all(width: 0.5, color: Colors.grey.withOpacity(0.5)),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Image.asset('assets/images/search.png'),
        )
      ],
    );
  }
}
