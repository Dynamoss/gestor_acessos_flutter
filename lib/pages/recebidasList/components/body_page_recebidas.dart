import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/themes/app_effects.dart';
import '../../solicitadasList/components/list_view_header.dart';
import '../recebidas_list_controller.dart';

class BodyPage2 extends StatefulWidget {
  final String hintTexti;
  const BodyPage2({Key key, this.hintTexti}) : super(key: key);

  @override
  State<BodyPage2> createState() => _BodyPage2State();
}

class _BodyPage2State extends State<BodyPage2> {
  final controller = RecebidasListController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //button para a realização da pesquisa
        Container(
          margin: const EdgeInsets.only(left: 8, right: 5, top: 20),
          width: MediaQuery.of(context).size.width * 1,
          height: 45,
          decoration: BoxDecoration(
              color: Color(0xffFFF9F9),
              // border: Border.all(
              //   width: 1,
              // ),
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                // BoxShadow(color: AppColors.secondary, spreadRadius: 1),
                BoxShadow(
                  color: Color(0xffE1473F),
                  offset: Offset(DropShadow.xOffset, DropShadow.yOffset),
                  blurRadius: DropShadow.blurRadius,
                  spreadRadius: DropShadow.spreadRadius,
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.only(left: 5),

            //realiza a pesquisa
            child: TextField(
              onChanged: controller.setBuscando,
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              cursorColor: Color(0xffE1473F),
              decoration: InputDecoration(
                hintText: widget.hintTexti,
                // hintStyle: TextStyle(color: AppColors.secondaryGrey),
                border: InputBorder.none,
                prefixIcon: IconButton(
                    // color: Colors.red,
                    icon: const Padding(
                      padding: EdgeInsets.only(top: 4.0),
                      child: Icon(Icons.search_outlined,
                          color: Color(0xffE1473F), size: 25
                          // _visible
                          //     ? Icons.search_outlined
                          //     : Icons.search_off_outlined
                          ),
                    ),
                    onPressed: () {
                      print(controller.resultadoBusca);
                    }),
                // contentPadding: EdgeInsets.only(bottom: 10, top: 20, right: 15),
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 40.0),
              child: Text(
                "Liberadas",
                // textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 22,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Secular'),
              ),
            ),
            //Header da Lista
            const ListHeader(),
            Column(
              children: [
                //Lista de pesquisa
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.60,
                  child:
                      // ListViewContent(
                      //     resultadoBusca: controller.resultadoBusca)
                      Observer(builder: (_) {
                    return controller.resultadoBusca.isNotEmpty
                        ? ListView.separated(
                            shrinkWrap: true,
                            padding: const EdgeInsets.all(8),
                            itemCount: controller.resultadoBusca.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: const Color(
                                    0xff255421,
                                  ),
                                  borderRadius: BorderRadius.circular(26),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(
                                          0, 0, 0, DropShadow.opacity),
                                      offset: Offset(DropShadow.xOffset,
                                          DropShadow.yOffset),
                                      blurRadius: DropShadow.blurRadius,
                                      spreadRadius: 2,
                                    ),
                                  ],
                                ),
                                margin: const EdgeInsets.only(
                                    left: 8.0, right: 8.0),
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                child: Container(
                                  child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        splashColor: Color(0xffE1473F),
                                        borderRadius: BorderRadius.circular(12),
                                        onTap: () => Modular.to
                                            .pushNamed('/confirmation'),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 8.0),
                                              width: 60,
                                              child: Center(
                                                child: Text(
                                                  '${controller.resultadoBusca[index]['codigo']}',
                                                  style: const TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: "Secular",
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 50,
                                              child: Center(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 8.0),
                                                  child: Text(
                                                    '${controller.resultadoBusca[index]['modulo']}',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontFamily: "Secular",
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 6),
                                              child: Container(
                                                width: 70,
                                                child: Text(
                                                  '${controller.resultadoBusca[index]['Data']}',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: "Secular",
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const Divider(),
                          )
                        : const Text(
                            'Resultados não encontrados',
                            style: TextStyle(fontSize: 24),
                          );
                  }),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
