import 'package:flutter/material.dart';

class ListHeader extends StatefulWidget {
  const ListHeader({Key key}) : super(key: key);

  @override
  _ListHeaderState createState() => _ListHeaderState();
}

class _ListHeaderState extends State<ListHeader> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.08,
        margin: const EdgeInsets.only(
          // top: 10,
          left: 10,
          right: 23,

          // bottom: 10
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 35, top: 25),
              width: 60,
              child: Text(
                'Código',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Secular",
                  color: Color.fromARGB(170, 0, 0, 0),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 25),
              width: 60,
              child: const Text(
                'Módulo',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Secular",
                  color: Color.fromARGB(170, 0, 0, 0),
                ),
              ),
            ),
            Container(
              // color: AppColors.secondaryGrey,
              margin: EdgeInsets.only(left: 50, right: 10, top: 25),
              width: 60,
              child: const Text(
                'Data',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Secular",
                  color: Color.fromARGB(170, 0, 0, 0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
