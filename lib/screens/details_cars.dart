import 'package:flutter/material.dart';
import 'package:flutter_care/constants/text_constants.dart';
import 'package:flutter_care/screens/edit_car.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailCarsScreen extends StatefulWidget {
  const DetailCarsScreen({super.key});

  @override
  State<DetailCarsScreen> createState() => _DetailCarsScreenState();
}

class _DetailCarsScreenState extends State<DetailCarsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 102, 173, 240),
        title: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          }, 
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white60,
            size: 30,
          ),
        ),
        actions: [
          IconButton(onPressed: (){

          }, 
          icon: Icon(
            Icons.more_horiz,
            color: Colors.white60,
            size: 30,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopMenuAndShowcase(),
          Container(
            margin: EdgeInsets.fromLTRB(20, 30, 20, 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nearest Repair Shop",
                      style: TextConstants.titleSection,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.directions_walk,
                          size: 24,
                          color: Colors.black54,
                        ),
                        Text(
                          "300m",
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_pin,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Tesla Center, Kelapa Gading",
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
                  height: 100,
          ),
          PriceAndBookNow(),
        ],
      ),
    );
  }
}

class PriceAndBookNow extends StatelessWidget {
  const PriceAndBookNow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 30),
            child: RichText(
              text: TextSpan(
                style: GoogleFonts.montserrat(
                    fontSize: 18,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500),
                children: const <TextSpan>[
                  TextSpan(text: 'Edit Car'),
                  TextSpan(
                      text: ' Information', style: TextStyle(color: Colors.black38)),
                ],
              ),
            ),
          ),
          Container(
            width: 170,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EditCar()));
              },
              child: Text(
                "Edit",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400, fontSize: 18,
                  color: Colors.black87
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 102, 173, 240),
                elevation: 0,
                shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TopMenuAndShowcase extends StatelessWidget {
  const TopMenuAndShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 102, 173, 240),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
          bottomLeft: Radius.circular(50),
        )
      ),
      child: Stack(
        children: [
          Positioned(
            top: 70,
            right: 20,
            left: 20,
            bottom: 0,
            child: Image.asset(
              "assets/images/tesla_1.png", 
              width: 300,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(15, 0, 18, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 7,
                              spreadRadius: 0.5,
                            )
                          ]
                        ),
                        child: Image.asset(
                          "assets/images/tesla_logo.png",
                          width: 30,
                          height: 30,
                        ),
                      ),

                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tesla X",
                              style: TextConstants.carName,
                            ),
                            Text(
                              "2023",
                              style: TextConstants.producedDate,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ]
            ),
          )
        ],
      ),
    );
  }
}