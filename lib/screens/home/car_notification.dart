import 'package:flutter/material.dart';
import 'package:flutter_care/constants/text_constants.dart';

class CarNotification extends StatefulWidget {
  const CarNotification({super.key});

  @override
  State<CarNotification> createState() => _CarNotificationState();
}

class _CarNotificationState extends State<CarNotification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              "Notifications",
              style: TextConstants.titleSection,
            ),
          ),
          Container(
            // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            // padding: EdgeInsets.only(left: 20, top: 20),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 213, 227, 238),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 7,
                  spreadRadius: 0.5,
                )
              ]
            ),
            height: 70,
            width: double.infinity,
            child: Text(
              "Notification 1",
              style: TextConstants.darkProducedDate,
            ),
            // width: double.infinity,
          )
        ],
      ),
    );
  }
}