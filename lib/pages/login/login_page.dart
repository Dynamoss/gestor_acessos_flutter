import 'dart:io';

import 'package:biometricx/biometricx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import '../../ui/export.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailInput = TextEditingController();
  final senhaInput = TextEditingController();
  TextEditingController teste = TextEditingController();

  Future<void> _saveMessage() async {
    String message = emailInput.text;

    if (message.isEmpty) {
      return;
    }

    final result = await BiometricX.encrypt(
      biometricKey: "teste",
      message: message,
      title: 'Biometric Permission',
      subtitle: 'Enter biometric credentials to save this message',
    );

    if (result.isSuccess && result.hasData) {
      final messageKey = result.data;
      teste.text = messageKey;

      // await messages.add(messageKey);
      // app.showList();
      sleep(Duration(seconds: 2));

      var url = Uri.parse('http://localhost:3333/CreateUser');

      Modular.to.pushNamed('/home');
      return teste;
    }

    if (result.isFailed) {
      showToast(
        result.errorMsg,
        context: context,
        animation: StyledToastAnimation.fade,
        position: StyledToastPosition.center,
      );
    }
  }

  String text = "";
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
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Image.asset(
                  "assets/undrawLoginrevu_ImageView_24-548x347.png",
                  height: 350,
                  width: 350,
                ),
              ),

              Container(
                margin: const EdgeInsets.only(left: 50, right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Entre com seus dados:",
                      // textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(170, 0, 0, 0),
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
                  controller: emailInput,
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
                      borderSide:
                          BorderSide(color: Color(0xffE1473F), width: 1.0),
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
                ),
              ),
              Text(teste.text.toString()),

              //SenhaBox
              Padding(
                padding: const EdgeInsets.only(
                    top: 30, bottom: 20, left: 40, right: 40),
                child: TextFormField(
                  controller: senhaInput,
                  obscureText: true,
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
                      borderSide:
                          BorderSide(color: Color(0xffE1473F), width: 1.0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    // hintText: "Digite seu Email",
                    fillColor: Colors.grey,
                    labelText: "Digite sua senha",
                    labelStyle: TextStyle(
                      color: Color.fromARGB(170, 0, 0, 0),
                      fontSize: 20,
                      fontFamily: "Secular",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              // Text(userInput.text.toString()),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 1, top: 10.0),
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
                    padding: const EdgeInsets.only(left: 26.0),
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
                      onPressed: _saveMessage,
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

              // Padding(
              //   padding: const EdgeInsets.only(left: 30, top: 30),
              //   child: SizedBox(
              //     height: 40,
              //     width: 40,
              //     child: TextButton(
              //       child: const Text("Insira sua Biometria",
              //           style: TextStyle(
              //             fontSize: 35,
              //             color: FvColors.button23FontColor,
              //             fontWeight: FontWeight.w400,
              //           )),
              //       style: TextButton.styleFrom(),
              //       onPressed: () {},
              //     ),
              //   ),
              // ),
            ],
          ),
        ));
  }
}
