import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({Key? key}) : super(key: key);

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
        InkWell(onTap: () {}, child: Image.asset("assets/images/beach.png")),
      ]),
    );
  }
}
