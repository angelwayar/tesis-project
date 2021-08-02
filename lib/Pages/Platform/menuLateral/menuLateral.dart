import 'package:flutter/material.dart';

class MenuLateral extends StatefulWidget {
  bool? statemenu;
  MenuLateral({required this.statemenu});

  @override
  _MenuLateralState createState() => _MenuLateralState();
}

class _MenuLateralState extends State<MenuLateral> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 80.0,
      color: Colors.black,
      child: Column(children: [
        SizedBox(height: 80.0),
        InkWell(
          onTap: () {},
          child: Image.asset("assets/images/city.png"),
        ),
        SizedBox(height: 100.0),
        InkWell(
          onTap: () {},
          child: Image.asset("assets/images/search.png"),
        ),
        SizedBox(height: 100.0),
        InkWell(
            onTap: () {
              setState(() {
                widget.statemenu = !widget.statemenu!;
              });
            },
            child: Image.asset("assets/images/beach.png")),
      ]),
    );
  }
}
