import 'package:flutter/material.dart';

class ControlesBotonesCompartirGigas extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ControlesBotonesCompartirGigasState();
  }
}

class _ControlesBotonesCompartirGigasState extends State<ControlesBotonesCompartirGigas> {

  bool habilitarBotonDisminuir = false;
  bool habilitarBotonAumentar = true;
  int gigasParaPasar = 1;

  int minimoParaPasar = 1;
  int maximoParaPasar = 14;

  disminuirGigas() {
    gigasParaPasar = gigasParaPasar - 1;

    habilitarBotonDisminuir = gigasParaPasar == minimoParaPasar;
  }

  aumentarGigas() {
    gigasParaPasar = gigasParaPasar + 1;

    habilitarBotonAumentar = gigasParaPasar == maximoParaPasar;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Material(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            color: Colors.white,
            child: InkWell(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              // When the user taps the button, show a snackbar
              onTap: () {
                setState(() {
                  disminuirGigas();
                });
              },
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey[300],
                          width: 1.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(6))
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
                          color: Colors.grey[300]),
                    ),
                  )),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey[300],
                      width: 1.0,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(6))
                  //color: Colors.blue, NO PONER COLOR AQUÍ PORQUE SE FRIEGA EL BOTONCITO
                  ),
              height: 60,
              //width: 60,
              //padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '$gigasParaPasar',
                    style: TextStyle(
                      fontSize: 22,
                      //fontWeight: FontWeight.w100,
                      //color: Colors.grey[300]
                    ),
                  ),
                  Text(
                    ' GB',
                    style: TextStyle(
                      fontSize: 18,
                      //fontWeight: FontWeight.w100,
                      //color: Colors.grey[300]
                    ),
                  )
                ],
              ),
            ),
          ),
          Material(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            color: Colors.white,
            child: InkWell(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              // When the user taps the button, show a snackbar
              onTap: () {
                setState(() {
                  aumentarGigas();
                });
              },
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey[300],
                          width: 1.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(6))
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
                          color: Colors.grey[300]),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
