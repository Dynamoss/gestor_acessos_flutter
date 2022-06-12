import 'package:flutter/material.dart';
import '../../ui/export.dart';



class Teladeloginscreen2 extends StatefulWidget {
  const Teladeloginscreen2({Key key}) : super(key: key);

  @override
  _Teladeloginscreen2State createState() => _Teladeloginscreen2State();}

class _Teladeloginscreen2State extends State<Teladeloginscreen2> {
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
  Padding(
    padding: const EdgeInsets.only(left: 96, top: 1212),
    child: SizedBox(
      height: 347,
      width: 548,
      child: Image.asset("assets/undrawLoginrevu_ImageView_24-548x347.png"),
    ),
  ),
  const Padding(
    padding: const EdgeInsets.only(left: 117, top: 128),
  child: 
        Text(
          "Entre com seus dados:",
              textAlign: TextAlign.left,
          style: TextStyle(
          fontSize: 30,
          color: FvColors.screen1Backgroundscreen2Backgroundscreen3Backgroundscreen4Backgroundscreen5Background,
          fontWeight: FontWeight.w400,
      ),
    )),
     const EditText538x81(
     label: "Rectangle_EditText_18",
     backgroundColor: Colors.transparent 
    ),
  const Padding(
    padding: const EdgeInsets.only(left: 125, top: 46),
  child: 
        Text(
          "Digite seu email ",
              textAlign: TextAlign.left,
          style: TextStyle(
          fontSize: 30,
          color: FvColors.screen1Backgroundscreen2Backgroundscreen3Backgroundscreen4Backgroundscreen5Background,
          fontWeight: FontWeight.w400,
      ),
    )),
     const EditText538x81(
     label: "Rectangle_EditText_19",
     backgroundColor: Colors.transparent 
    ),
  const Padding(
    padding: const EdgeInsets.only(left: 125, top: 51),
  child: 
        Text(
          "Digite sua senha ",
              textAlign: TextAlign.left,
          style: TextStyle(
          fontSize: 30,
          color: FvColors.screen1Backgroundscreen2Backgroundscreen3Backgroundscreen4Backgroundscreen5Background,
          fontWeight: FontWeight.w400,
      ),
    )),
  Padding(
    padding: const EdgeInsets.only(left: 0, top: 68),
    child: SizedBox(
      height: 327,
      width: 214,
      child: Image.asset("assets/Ellipse_ImageView_17-214x327.png"),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(left: 257, top: 201),
    child: 
    SizedBox(
      height: 118,
      width: 393,
    child: TextButton(
      child: const Text("Insira sua Biometria",
      style: TextStyle(
        fontSize: 35,
        color: FvColors.button23FontColor,
        fontWeight: FontWeight.w400,
      )),
      style: TextButton.styleFrom(
      ),
      onPressed: () {
        },
      ),
    ),
  ),
          ],
        ),
    ));
  }
}
