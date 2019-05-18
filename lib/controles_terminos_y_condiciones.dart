import 'package:flutter/material.dart';

class ControlesTerminosYCondiciones extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ControlesTerminosYCondicionesState();
  }
}

class _ControlesTerminosYCondicionesState extends State<ControlesTerminosYCondiciones> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Checkbox(
            activeColor: Color.fromARGB(255, 91, 197, 0),
            //checkColor: Color.fromARGB(255, 91, 197, 0) /*Color(0XFF57C700)*/,
            value: _isChecked,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onChanged: (option) {
              setState(() {
                _isChecked = option;
              });
            },
          ),
        ),
        Text("Acepto términos y condiciones",
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                color: Colors.grey))
      ],
    );
  }
}
