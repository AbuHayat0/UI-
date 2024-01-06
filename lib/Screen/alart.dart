import 'package:flutter/material.dart';

class SeePic extends StatelessWidget {
  final BuildContext parentContext;
  final String imag_name;
  final String text;


  SeePic({required this.parentContext, required this.imag_name, required this.text});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 220,
      child: ElevatedButton(
        onPressed: () {
          // Show the alert dialog using the passed context
          showDialog(
            context: parentContext,
            builder: (BuildContext context) {
              return AlertDialog(
                backgroundColor: Colors.black87,
                title: Center(child: Text("Details", style: TextStyle(color: Colors.black, backgroundColor: Colors.white),)),
                content: Image.asset(imag_name),
                actions: <Widget>[
                  Text(text,textAlign: TextAlign.justify, style: TextStyle(color: Colors.white), ),
                  TextButton(
                    style: TextButton.styleFrom(backgroundColor:Colors.white),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Close"),
                  ),
                ],
              );
            },
          );
        },
        child: Text(
          "See",
          style: TextStyle(
            color: Colors.green,
          ),
        ),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
      ),
    );
  }
}
