import 'package:flutter/material.dart';
import './pallete.dart';

class Button209x155 extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Function() onPressed;

  const Button209x155({
    Key key,
    @required this.label,
    @required this.backgroundColor,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding( 
    padding: const EdgeInsets.only(left: 475, top: 0),
      child: SizedBox(
        height: 155,
        width: 209,
      child: TextButton(
        child: Text(label, 
        style: const TextStyle(
          fontSize: 14,
          color: Color.fromRGBO(0,0,0,1),
          ),
        ),
        style: TextButton.styleFrom(
        
        ),
        onPressed: onPressed,
      ),
  ));
  }
}
class Button611x94 extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Function() onPressed;

  const Button611x94({
    Key key,
    @required this.label,
    @required this.backgroundColor,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding( 
    padding: const EdgeInsets.only(left: 54, top: 0),
      child: SizedBox(
        height: 94,
        width: 611,
      child: TextButton(
        child: Text(label, 
        style: const TextStyle(
          fontSize: 25,
          color: FvColors.button23FontColor,
          fontWeight: FontWeight.w400,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
        
        ),
        onPressed: onPressed,
      ),
  ));
  }
}
