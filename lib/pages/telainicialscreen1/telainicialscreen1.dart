import 'package:flutter/material.dart';
import '../../ui/export.dart';

class Telainicialscreen1 extends StatefulWidget {
  const Telainicialscreen1({Key key}) : super(key: key);

  @override
  _Telainicialscreen1State createState() => _Telainicialscreen1State();
}

class _Telainicialscreen1State extends State<Telainicialscreen1> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.09;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // This was created due the empty containers in the Figma Input
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 90.0),
                      child: Image.asset(
                          "assets/undrawConfirmedresef_ImageView_7-581x725.png",
                          width: 300,
                          height: 400),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 160,
                        height: 320,
                        decoration: const BoxDecoration(
                          color: Color(0xffE1473F),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.elliptical(140, 200),
                            topRight: Radius.elliptical(60, 70),
                            bottomLeft: Radius.elliptical(140, 200),
                            bottomRight: Radius.elliptical(60, 70),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(left: 80.0),
                child: Text(
                  "Suas Permissões                     ",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 22,
                      color: FvColors
                          .screen1Backgroundscreen2Backgroundscreen3Backgroundscreen4Backgroundscreen5Background,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Secular'),
                ),
              ),

              Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 80.0),
                    child: Text(
                      "na palma da sua mão",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Secular'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 1, top: 25.0),
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
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 10),
                  //   child: SizedBox(
                  //     height: 50,
                  //     width: 80,
                  //     child: Image.asset(
                  //         "assets/baselinechevronrightwhite_ImageView_15-80x80.png"),
                  //   ),
                  // ),
                  const Padding(
                      padding: EdgeInsets.only(left: 190, top: 100),
                      child: Text(
                        "Iniciar",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 22,
                            color: FvColors
                                .screen1Backgroundscreen2Backgroundscreen3Backgroundscreen4Backgroundscreen5Background,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Secular'),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 70, left: 280.0),
                    child: Ink(
                      decoration: const ShapeDecoration(
                        color: Color(0xff4A3333),
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        iconSize: 72,
                        icon: const Icon(
                          Icons.chevron_right,
                          size: 50,
                        ),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              // This was created due the empty containers in the Figma Input
              // Container(),
              // // This was created due the empty containers in the Figma Input
              // Container(),
            ],
          ),
        ));
  }
}
