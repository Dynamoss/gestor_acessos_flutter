import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EmailBox extends StatefulWidget {
  const EmailBox({Key key}) : super(key: key);

  @override
  State<EmailBox> createState() => _EmailBoxState();
}

class _EmailBoxState extends State<EmailBox> {
  final userInput = TextEditingController();
  String text = "";
  @override
  Widget build(BuildContext context) {
    TextFormField(
      controller: userInput,
      // onChanged: (value) {
      //   setState(() {
      //     userInput.text = value.toString();
      //   });
      // },
      style: const TextStyle(
          fontSize: 20,
          color: Color.fromARGB(170, 0, 0, 0),
          fontWeight: FontWeight.w400,
          fontFamily: 'Secular'),
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 20, 50, 10),
        focusColor: Colors.white,

        // errorText: "Error",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffE1473F), width: 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        // hintText: "Digite seu Email",
        fillColor: Colors.grey,
        labelText: "Digite seu Email",
        labelStyle: TextStyle(
          color: Color.fromARGB(170, 0, 0, 0),
          fontSize: 20,
          fontFamily: "Secular",
          fontWeight: FontWeight.w400,
        ),
      ),
    );

    // Text(userInput.text.toString()),
  }
}
