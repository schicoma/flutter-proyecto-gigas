import 'package:flutter/material.dart';
import 'package:pasagigas_app/controles_compartir_gigas.dart';
import 'package:pasagigas_app/controles_terminos_y_condiciones.dart';
import 'package:pasagigas_app/terminos_y_condiciones.dart';

class PasarGigasPage extends StatelessWidget {
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
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
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
                                color: Color(0xFF2A2A3C),
                                /*color: Color.fromARGB(255, 91, 197, 0),*/
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500),
                          )),
                      Container(
                        child: Text(
                          "Solo puedes pasar Gigas a dos números postpago Movistar  durante tu ciclo.",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 16.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Nombre de la persona a compartir",
                              hintStyle: TextStyle(color: Colors.grey[400]),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey[400]),
                              ),
                            ),
                          )),
                      Container(
                          padding: EdgeInsets.only(top: 16.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Ingresa a su número postpago",
                              hintStyle: TextStyle(color: Colors.grey[400]),
                              //focusedBorder: UnderlineInputBorder(
                              //borderSide: BorderSide(color: Colors.cyan),
                              //),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey[400]),
                              ),
                              /* NOT WORKS
                              border: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red))*/
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
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(bottom: 24.0),
                              child: Text(
                                "Ingresa la cantidad de Gigas que quieres pasar",
                                style: TextStyle(
                                    color: Color(0xFF2A2A3C),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500),
                              )),
                          ControlesBotonesCompartirGigas(),
                          Container(
                            margin: EdgeInsets.only(bottom: 16.0),
                            child: Text("(min 1 GB - max 14 GB)",
                                style: TextStyle(color: Colors.grey)),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 24.0, left: 0),
                            child: ControlesTerminosYCondiciones(),
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: RaisedButton(
                                    color: Color(0XFF5BC500),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(8.0)),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (buildContext) {
                                        return TerminosYCondiciones();
                                      }));
                                    },
                                    child: Text(
                                      "CONTINUAR",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )),
                              )
                            ],
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
