import 'package:flutter/material.dart';
import '../../ui/export.dart';



class Telasolicitadaslistscreen4 extends StatefulWidget {
  const Telasolicitadaslistscreen4({Key key}) : super(key: key);

  @override
  _Telasolicitadaslistscreen4State createState() => _Telasolicitadaslistscreen4State();}

class _Telasolicitadaslistscreen4State extends State<Telasolicitadaslistscreen4> {
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
    padding: const EdgeInsets.only(left: 54, top: 1209),
    child:
    SizedBox(
      height: 55,
      width: 611,
    child: TextField(
          textAlign: TextAlign.left,
      decoration: InputDecoration(
        hintText: "Rectangle_EditText_51"
      ),
      style: const TextStyle(
        fontSize: 14,                          
      ),
    ),
  ),
),
  Padding(
    padding: const EdgeInsets.only(left: 571, top: 31),
    child: SizedBox(
      height: 29,
      width: 61,
      child: Image.asset("assets/outlinefilterlistwhite_ImageView_52-61x29.png"),
    ),
  ),
  const Padding(
    padding: const EdgeInsets.only(left: 98, top: 8),
  child: 
        Text(
          "Pesquisar",
              textAlign: TextAlign.left,
          style: TextStyle(
          fontSize: 25,
          color: FvColors.textview53FontColor,
          fontWeight: FontWeight.w700,
      ),
    )),
  const Padding(
    padding: const EdgeInsets.only(left: 65, top: 106),
  child: 
        Text(
          "Solicitadas",
              textAlign: TextAlign.left,
          style: TextStyle(
          fontSize: 35,
          color: FvColors.screen1Backgroundscreen2Backgroundscreen3Backgroundscreen4Backgroundscreen5Background,
          fontWeight: FontWeight.w400,
      ),
    )),
  const Padding(
    padding: const EdgeInsets.only(left: 98, top: 55),
  child: 
        Text(
          "Código",
              textAlign: TextAlign.left,
          style: TextStyle(
          fontSize: 18,
          color: FvColors.screen1Backgroundscreen2Backgroundscreen3Backgroundscreen4Backgroundscreen5Background,
          fontWeight: FontWeight.w400,
      ),
    )),
  const Padding(
    padding: const EdgeInsets.only(left: 321, top: 11),
  child: 
        Text(
          "Módulo",
              textAlign: TextAlign.left,
          style: TextStyle(
          fontSize: 18,
          color: FvColors.screen1Backgroundscreen2Backgroundscreen3Backgroundscreen4Backgroundscreen5Background,
          fontWeight: FontWeight.w400,
      ),
    )),
  const Padding(
    padding: const EdgeInsets.only(left: 550, top: 11),
  child: 
        Text(
          "Data",
              textAlign: TextAlign.left,
          style: TextStyle(
          fontSize: 18,
          color: FvColors.screen1Backgroundscreen2Backgroundscreen3Backgroundscreen4Backgroundscreen5Background,
          fontWeight: FontWeight.w400,
      ),
    )),
  Padding(
    padding: const EdgeInsets.only(left: 54, top: 43),
    child: 
    SizedBox(
      height: 94,
      width: 611,
    child: TextButton(
      child: const Text("345",
      style: TextStyle(
        fontSize: 25,
        color: FvColors.button23FontColor,
        fontWeight: FontWeight.w400,
      )),
      style: TextButton.styleFrom(
      backgroundColor: FvColors.button45Backgroundcontainer57Background,
      ),
      onPressed: () {
        },
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(left: 54, top: 35),
    child: 
    SizedBox(
      height: 94,
      width: 611,
    child: TextButton(
      child: const Text("375",
      style: TextStyle(
        fontSize: 25,
        color: FvColors.button23FontColor,
        fontWeight: FontWeight.w400,
      )),
      style: TextButton.styleFrom(
      backgroundColor: FvColors.button45Backgroundcontainer57Background,
      ),
      onPressed: () {
        },
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(left: 54, top: 36),
    child: 
    SizedBox(
      height: 94,
      width: 611,
    child: TextButton(
      child: const Text("499",
      style: TextStyle(
        fontSize: 25,
        color: FvColors.button23FontColor,
        fontWeight: FontWeight.w400,
      )),
      style: TextButton.styleFrom(
      backgroundColor: FvColors.button45Backgroundcontainer57Background,
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
