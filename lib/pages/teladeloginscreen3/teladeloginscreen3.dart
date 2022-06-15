import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../ui/export.dart';

class Teladeloginscreen3 extends StatefulWidget {
  const Teladeloginscreen3({Key key}) : super(key: key);

  @override
  _Teladeloginscreen3State createState() => _Teladeloginscreen3State();
}

class _Teladeloginscreen3State extends State<Teladeloginscreen3> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // This was created due the empty containers in the Figma Input

            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 30),
                    child: Container(
                      // color: Colors.grey,
                      width: 100.0,
                      height: 100.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/imagem_app.jpeg"),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 30, top: 35),
                    child: Text(
                      "Olá, Igor",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Secular'),
                    ),
                  ),
                ],
              ),
            ),
            // This was created due the empty containers in the Figma Input

            const Center(
              child: Padding(
                  padding: EdgeInsets.only(left: 40, top: 60),
                  child: Text(
                    "Permissões",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Secular'),
                  )),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 43),
                  child: Card(
                    color: const Color(
                      0xff4A3333,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                    ),
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () => Modular.to.pushNamed('/solicitadasList'),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: SizedBox(
                          width: 110,
                          height: 60,
                          child: Column(
                            children: const [
                              Text(
                                'Solicitadas',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(170, 255, 255, 255),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Secular'),
                              ),
                              Text(
                                '30',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Secular'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 43),
                  child: Card(
                    color: const Color(0xffE1473F),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                    ),
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () => Modular.to.pushNamed('/recebidasList'),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: SizedBox(
                          width: 110,
                          height: 60,
                          child: Column(
                            children: const [
                              Text(
                                'Liberadas',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(170, 255, 255, 255),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Secular'),
                              ),
                              Text(
                                '28',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Secular'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 43),
                  child: Card(
                    color: const Color(
                      0xff4A3333,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                    ),
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        debugPrint('Card tapped.');
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: SizedBox(
                          width: 110,
                          height: 60,
                          child: Column(
                            children: const [
                              Text(
                                'Encerradas',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(170, 255, 255, 255),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Secular'),
                              ),
                              Text(
                                '33',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Secular'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, top: 250.0),
              child: Row(
                children: [
                  const Text(
                    'Criar uma nova solicitação',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Secular'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10),
                    child: Ink(
                      decoration: const ShapeDecoration(
                        color: Color(0xff4A3333),
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        iconSize: 62,
                        icon: const Icon(
                          Icons.add,
                          size: 40,
                        ),
                        color: Colors.white,
                        onPressed: () => Modular.to.pushNamed('/solicitar'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
