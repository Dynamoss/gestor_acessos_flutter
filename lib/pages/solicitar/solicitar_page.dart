import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../ui/pallete.dart';

class SolicitarPage extends StatefulWidget {
  const SolicitarPage({Key key}) : super(key: key);

  @override
  State<SolicitarPage> createState() => _SolicitarPageState();
}

class _SolicitarPageState extends State<SolicitarPage> {
  final motivoInput = TextEditingController();
  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 90, left: 50, right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Solicitar Permissão:",
                      // textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(250, 0, 0, 0),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Secular'),
                    ),
                  ],
                ),
              ),

              // EmailBox

              Padding(
                padding: const EdgeInsets.only(
                    top: 40, bottom: 20, left: 40, right: 40),
                child: TextFormField(
                  controller: motivoInput,
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
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 50, 0),
                    focusColor: Color(0xffE1473F),
                    // errorText: "Error",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffE1473F),
                        width: 3.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffE1473F), width: 2.0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    // hintText: "Digite seu Email",

                    labelText: "Motivo",
                    labelStyle: TextStyle(
                      color: Color.fromARGB(140, 0, 0, 0),
                      fontSize: 20,
                      fontFamily: "Secular",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              // Text(userInput.text.toString()),
              Padding(
                padding: const EdgeInsets.only(left: 50.0, top: 30),
                child: DropdownButton<String>(
                  value: dropdownValue,
                  // alignment: AlignmentDirectional.bottomCenter,
                  borderRadius: BorderRadius.circular(22),
                  hint: const Text(
                    'Módulo',
                    style: TextStyle(
                        color: Color.fromARGB(140, 0, 0, 0),
                        fontFamily: "Secular",
                        fontSize: 20),
                  ),
                  icon: const Icon(Icons.arrow_drop_down),
                  elevation: 16,

                  style: const TextStyle(color: Colors.black),
                  underline: Container(
                    height: 1.4,
                    color: Color(0xffE1473F),
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  items: <String>[
                    'A1 - Produto',
                    'A2 - Clientes',
                    'A3 - ADM',
                    'A4 - Marketing'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                            color: Color.fromARGB(140, 0, 0, 0),
                            fontFamily: "Secular",
                            fontSize: 20),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 1, top: 315),
                    child: Container(
                      width: 100,
                      height: 160,
                      decoration: const BoxDecoration(
                        color: Color(0xffE1473F),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(42, 50),
                          topRight: Radius.elliptical(100, 110),
                          bottomLeft: Radius.elliptical(42, 50),
                          bottomRight: Radius.elliptical(100, 110),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 26.0, top: 315),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(
                          0xff4A3333,
                        ),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                        ),
                        padding: const EdgeInsets.all(16.0),
                      ),
                      onPressed: () => Modular.to.navigate('/home'),
                      child: const Text("Insira sua Biometria",
                          style: TextStyle(
                              fontSize: 20,
                              color: FvColors.button23FontColor,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Secular")),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
