import 'package:flutter/material.dart';
import '../../ui/export.dart';



class Telasolicitaaoformscreen5 extends StatefulWidget {
  const Telasolicitaaoformscreen5({Key key}) : super(key: key);

  @override
  _Telasolicitaaoformscreen5State createState() => _Telasolicitaaoformscreen5State();}

class _Telasolicitaaoformscreen5State extends State<Telasolicitaaoformscreen5> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: FvColors.screen1Backgroundscreen2Backgroundscreen3Backgroundscreen4Backgroundscreen5Background,
      body: 
      SingleChildScrollView(
        child:
      Column(
            children: [
    // This was created due the empty containers in the Figma Input
    Container(),
  const Padding(
    padding: const EdgeInsets.only(left: 62, top: 1191),
  child: 
        Text(
          "Solicitar Permissão:",
              textAlign: TextAlign.left,
          style: TextStyle(
          fontSize: 35,
          color: FvColors.screen1Backgroundscreen2Backgroundscreen3Backgroundscreen4Backgroundscreen5Background,
          fontWeight: FontWeight.w400,
      ),
    )),
  const Padding(
    padding: const EdgeInsets.only(left: 62, top: 140),
  child: 
        Text(
          "Motivo",
              textAlign: TextAlign.left,
          style: TextStyle(
          fontSize: 35,
          color: FvColors.screen1Backgroundscreen2Backgroundscreen3Backgroundscreen4Backgroundscreen5Background,
          fontWeight: FontWeight.w400,
      ),
    )),
  const Padding(
    padding: const EdgeInsets.only(left: 62, top: 134),
  child: 
        Text(
          "Módulo",
              textAlign: TextAlign.left,
          style: TextStyle(
          fontSize: 35,
          color: FvColors.screen1Backgroundscreen2Backgroundscreen3Backgroundscreen4Backgroundscreen5Background,
          fontWeight: FontWeight.w400,
      ),
    )),
  Padding(
    padding: const EdgeInsets.only(left: 202, top: 30),
    child: SizedBox(
      height: 40,
      width: 40,
      child: Image.asset("assets/baselinenavigatenextblackdp_ImageView_65-40x40.png"),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(left: 2, top: 502),
    child: SizedBox(
      height: 328,
      width: 214,
      child: Image.asset("assets/Ellipse_ImageView_64-214x328.png"),
    ),
  ),
Align(
    alignment: Alignment.topLeft,
  child:
Padding(
    padding: const EdgeInsets.only(left: 257, top: 196),
  child: 
  Container(
      width: 418,
      height: 143,
    child: Stack(
    children: [
      Container(
        child: Align(
            alignment: Alignment.topLeft,
          child: Align(
    alignment: Alignment.topLeft,
  child:
Padding(
    padding: const EdgeInsets.only(left: 0, top: 0),
  child: 
  Container(
      color: FvColors.button45Backgroundcontainer57Background,
      width: 418,
      height: 143,
    child: Stack(
    children: [
      Container(
        child: Align(
            alignment: Alignment.topLeft,
          child:     // This was created due the empty containers in the Figma Input
    Container(),

      )),
      Container(
        child: Align(
            alignment: Alignment.topLeft,
          child:   const Padding(
    padding: const EdgeInsets.only(left: 33, top: 33),
  child: 
        Text(
          "Insira sua Biometria",
              textAlign: TextAlign.left,
          style: TextStyle(
          fontSize: 35,
          color: FvColors.button23FontColor,
          fontWeight: FontWeight.w400,
      ),
    )),

      )),
    ],
)))),

      )),
    ],
)))),
          ],
        ),
    ));
  }
}
