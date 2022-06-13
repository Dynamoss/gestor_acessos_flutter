import 'package:flutter/material.dart';
import '../../ui/export.dart';
import 'components/body_page.dart';

class SolicitadasListPage extends StatefulWidget {
  const SolicitadasListPage({Key key}) : super(key: key);

  @override
  _SolicitadasListPageState createState() => _SolicitadasListPageState();
}

class _SolicitadasListPageState extends State<SolicitadasListPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Stack(
          children: [
            Positioned(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: BodyPage(hintTexti: "pesquisar"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )));
  }
}
