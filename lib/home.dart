import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pasar Gigas")),
      body: Container(
        margin: EdgeInsets.all(0),
        decoration: BoxDecoration(color: Colors.grey[300]),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  color: Colors.white,
                  child: Text(
                    "Vas a Pasar Gigas de tu línea: 999 888 777",
                    style: TextStyle(
                        fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.grey[500]),
                  ),
                  height: 56.0,
                  margin: EdgeInsets.only(bottom: 16),
                  padding: EdgeInsets.all(16),
                ))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(bottom: 16.0),
                          child: Text(
                            "¿A quién le quieres Pasar Gigas?",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.w500),
                          )),
                      Container(
                        child: Text(
                          "Solo puedes pasar Gigas a dos números postpago Movistar  durante tu ciclo.",
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.grey[500]),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 16.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                               border: UnderlineInputBorder(
                                 borderSide: BorderSide(color: Colors.grey[500])
                               ),
                                hintText: "Nombre de la persona a compartir"),
                          )),
                      Container(
                          padding: EdgeInsets.only(top: 16.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                 borderSide: BorderSide(color: Colors.red[500])
                               ),
                              hintText: "Ingresa a su número postpago",
                            ),
                          ))
                    ],
                  ),
                  //height: 217.0,
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.only(bottom: 16),
                ))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.white,
                    //height: 50,
                    child: Column(children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(bottom: 24.0),
                          child: Text(
                            "Ingresa la cantidad de Gigas que quieres pasar",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.w500),
                          )),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Material(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              color: Colors.white,
                              child: InkWell(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                // When the user taps the button, show a snackbar
                                onTap: () {},
                                child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey[400],
                                            width: 1.0,
                                            style: BorderStyle.solid),
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(6))
                                        //color: Colors.blue, NO PONER COLOR AQUÍ PORQUE SE FRIEGA EL BOTONCITO
                                        ),
                                    height: 60,
                                    width: 60,
                                    //padding: EdgeInsets.all(12.0),
                                    child: Center(
                                      child: Text(
                                        '-',
                                        style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.w100,
                                            color: Colors.grey[400]),
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Container(
                                  margin: EdgeInsets.only(left: 16, right: 16),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey[400],
                                            width: 1.0,
                                            style: BorderStyle.solid),
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(6))
                                        //color: Colors.blue, NO PONER COLOR AQUÍ PORQUE SE FRIEGA EL BOTONCITO
                                        ),
                                    height: 60,
                                    //width: 60,
                                    //padding: EdgeInsets.all(12.0),
                                    child: Center(
                                      child: Text(
                                        '40 GB',
                                        style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.w100,
                                            color: Colors.grey[400]),
                                      ),
                                    )),
                              ),
                            ),
                            Material(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              color: Colors.white,
                              child: InkWell(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                // When the user taps the button, show a snackbar
                                onTap: () {},
                                child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey[400],
                                            width: 1.0,
                                            style: BorderStyle.solid),
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(6))
                                        //color: Colors.blue, NO PONER COLOR AQUÍ PORQUE SE FRIEGA EL BOTONCITO
                                        ),
                                    height: 60,
                                    width: 60,
                                    //padding: EdgeInsets.all(12.0),
                                    child: Center(
                                      child: Text(
                                        '+',
                                        style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.w100,
                                            color: Colors.grey[400]),
                                      ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
