import 'package:flutter/material.dart';
import 'pallete.dart';

class EditText538x81 extends StatelessWidget {
  final String label;
  final Color backgroundColor;

  const EditText538x81({
    Key key,
    @required this.label,
    @required this.backgroundColor,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
    padding: const EdgeInsets.only(left: 101, top: 0),
    child:
    SizedBox(
      height: 81,
      width: 538,
        child: TextField(
        textAlign: TextAlign.left,
        decoration: InputDecoration(
            hintText: label,
        ),
        style: const TextStyle(
            fontSize: 14,                          
          ),
        ),
      ),
    );
  }
}
