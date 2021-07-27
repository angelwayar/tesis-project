import 'package:flutter/material.dart';

class BottomBarNav extends StatefulWidget {
  const BottomBarNav({ Key? key }) : super(key: key);

  @override
  _BottomBarNavState createState() => _BottomBarNavState();
}

class _BottomBarNavState extends State<BottomBarNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: Row(
        children: [
          
        ],
      ),
    );
  }
}