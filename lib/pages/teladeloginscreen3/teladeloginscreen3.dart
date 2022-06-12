import 'package:flutter/material.dart';
import '../../ui/export.dart';



class Teladeloginscreen3 extends StatefulWidget {
  const Teladeloginscreen3({Key key}) : super(key: key);

  @override
  _Teladeloginscreen3State createState() => _Teladeloginscreen3State();}

class _Teladeloginscreen3State extends State<Teladeloginscreen3> {
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
    padding: const EdgeInsets.only(left: 54, top: 1243),
    child: SizedBox(
      height: 181,
      width: 187,
      child: Image.asset("assets/Ellipse_ImageView_27-187x181.png"),
    ),
  ),
    // This was created due the empty containers in the Figma Input
    Container(),
  Padding(
    padding: const EdgeInsets.only(left: 199, top: 24),
    child: SizedBox(
      height: 25,
      width: 25,
      child: Image.asset("assets/baselineaddaphotowhite_ImageView_29-25x25.png"),
    ),
  ),
  const Padding(
    padding: const EdgeInsets.only(left: 285, top: 35),
  child: 
        Text(
          "Olá, Igor",
              textAlign: TextAlign.left,
          style: TextStyle(
          fontSize: 35,
          color: FvColors.screen1Backgroundscreen2Backgroundscreen3Backgroundscreen4Backgroundscreen5Background,
          fontWeight: FontWeight.w400,
      ),
    )),
  const Padding(
    padding: const EdgeInsets.only(left: 257, top: 252),
  child: 
        Text(
          "Permissões",
              textAlign: TextAlign.left,
          style: TextStyle(
          fontSize: 35,
          color: FvColors.screen1Backgroundscreen2Backgroundscreen3Backgroundscreen4Backgroundscreen5Background,
          fontWeight: FontWeight.w400,
      ),
    )),
  Padding(
    padding: const EdgeInsets.only(left: 475, top: 43),
    child: 
    SizedBox(
      height: 155,
      width: 209,
    child: TextButton(
      child: const Text("Rectangle_Button_31",
      style: TextStyle(
        fontSize: 14,
      )),
      style: TextButton.styleFrom(
      ),
      onPressed: () {
        },
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(left: 255, top: 140),
    child: 
    SizedBox(
      height: 155,
      width: 209,
    child: TextButton(
      child: const Text("Rectangle_Button_33",
      style: TextStyle(
        fontSize: 14,
      )),
      style: TextButton.styleFrom(
      ),
      onPressed: () {
        },
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(left: 29, top: 137),
    child: 
    SizedBox(
      height: 155,
      width: 209,
    child: TextButton(
      child: const Text("Rectangle_Button_32",
      style: TextStyle(
        fontSize: 14,
      )),
      style: TextButton.styleFrom(
      ),
      onPressed: () {
        },
      ),
    ),
  ),
  const Padding(
    padding: const EdgeInsets.only(left: 503, top: 102),
  child: 
        Text(
          "Encerradas",
              textAlign: TextAlign.left,
          style: TextStyle(
          fontSize: 30,
          color: FvColors.button23FontColor,
          fontWeight: FontWeight.w400,
      ),
    )),
  const Padding(
    padding: const EdgeInsets.only(left: 54, top: 29),
  child: 
        Text(
          "Solicitadas",
              textAlign: TextAlign.left,
          style: TextStyle(
          fontSize: 30,
          color: FvColors.button23FontColor,
          fontWeight: FontWeight.w400,
      ),
    )),
  const Padding(
    padding: const EdgeInsets.only(left: 291, top: 29),
  child: 
        Text(
          "Liberadas",
              textAlign: TextAlign.left,
          style: TextStyle(
          fontSize: 30,
          color: FvColors.button23FontColor,
          fontWeight: FontWeight.w400,
      ),
    )),
  const Padding(
    padding: const EdgeInsets.only(left: 338, top: 22),
  child: 
        Text(
          "28",
              textAlign: TextAlign.left,
          style: TextStyle(
          fontSize: 35,
          color: FvColors.textview34FontColor,
          fontWeight: FontWeight.w400,
      ),
    )),
  const Padding(
    padding: const EdgeInsets.only(left: 564, top: 36),
  child: 
        Text(
          "32",
              textAlign: TextAlign.left,
          style: TextStyle(
          fontSize: 35,
          color: FvColors.button23FontColor,
          fontWeight: FontWeight.w400,
      ),
    )),
  const Padding(
    padding: const EdgeInsets.only(left: 112, top: 36),
  child: 
        Text(
          "30",
              textAlign: TextAlign.left,
          style: TextStyle(
          fontSize: 35,
          color: FvColors.button23FontColor,
          fontWeight: FontWeight.w400,
      ),
    )),
  Padding(

    padding: const EdgeInsets.only(left: 523, top: 499),
    child: Container(
      height: 156,
      width: 151,
      child:
        GestureDetector(
          onTap: () {
        },
        child: Image.asset("assets/Ellipse_ImageButton_40-151x156.png"),
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(left: 559, top: 103),
    child: SizedBox(
      height: 80,
      width: 80,
      child: Image.asset("assets/baselineaddwhitedp_ImageView_41-80x80.png"),
    ),
  ),
  const Padding(
    padding: const EdgeInsets.only(left: 54, top: 60),
  child: 
        Text(
          "Criar uma nova solicitação",
              textAlign: TextAlign.left,
          style: TextStyle(
          fontSize: 35,
          color: FvColors.screen1Backgroundscreen2Backgroundscreen3Backgroundscreen4Backgroundscreen5Background,
          fontWeight: FontWeight.w400,
      ),
    )),
          ],
        ),
    ));
  }
}
