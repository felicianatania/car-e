import 'package:flutter/material.dart';
import 'package:flutter_care/reusable_widgets/reusable_widget.dart';
import 'package:flutter_care/screens/home_screen.dart';
import 'package:flutter_care/utils/color_utils.dart';
import 'package:intl/intl.dart';

class AddCar extends StatefulWidget {
  const AddCar({super.key});

  @override
  State<AddCar> createState() => _AddCarState();
}

class _AddCarState extends State<AddCar> {
  TextEditingController _carNameTextController = TextEditingController();
  TextEditingController _carBrandTextController = TextEditingController();
  TextEditingController _lastServiceTextController = TextEditingController();
  TextEditingController _nextServiceTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Enter Car Information",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            hexStringToColor("5FADF4"),
            hexStringToColor("329DFF"),
            hexStringToColor("1C87EA")
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.fromLTRB(15, 120, 15, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Car Brand", Icons.article_outlined, false,
                    _carBrandTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Car Name", Icons.article_outlined, false,
                    _carNameTextController),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _lastServiceTextController,
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white.withOpacity(0.9)),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.white70,
                    ),
                    labelText: "Last Service Date",
                    labelStyle: TextStyle(color: const Color.fromRGBO(255, 255, 255, 0.9)),
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    fillColor: const Color.fromRGBO(255, 255, 255, 0.3),
                    border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(const Radius.circular(30.0)),
                        borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
                  ),
                  onTap: () async{
                    DateTime? pickeddate = await showDatePicker(
                      context: context, 
                      initialDate: DateTime.now(), 
                      firstDate: DateTime(1900), 
                      lastDate: DateTime(2101)
                    );
                    if (pickeddate != null){
                      setState(() {
                        _lastServiceTextController.text = DateFormat.yMMMMd('en_US') .format(pickeddate);
                      });
                    }
                  }
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _nextServiceTextController,
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white.withOpacity(0.9)),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.white70,
                    ),
                    labelText: "Next Service Date",
                    labelStyle: TextStyle(color: const Color.fromRGBO(255, 255, 255, 0.9)),
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    fillColor: const Color.fromRGBO(255, 255, 255, 0.3),
                    border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(const Radius.circular(30.0)),
                        borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
                  ),
                  onTap: () async{
                    DateTime? pickeddate = await showDatePicker(
                      context: context, 
                      initialDate: DateTime.now(), 
                      firstDate: DateTime(1900), 
                      lastDate: DateTime(2101)
                    );
                    if (pickeddate != null){
                      setState(() {
                        _nextServiceTextController.text = DateFormat.yMMMMd('en_US') .format(pickeddate);
                      });
                    }
                  }
                ),
                const SizedBox(
                  height: 20,
                ),

                addButton(context, false, () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                })
              ],
            ),
          ))),
    );
  }
}