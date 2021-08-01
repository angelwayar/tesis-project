import 'package:flutter/material.dart';

class BottomBarNav extends StatefulWidget {
  BottomBarNav({Key? key, required this.showButtons}) : super(key: key);

  final bool showButtons;

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
      child: widget.showButtons? Row(
        children: [
          ElevatedButton(
                      onPressed: () async {
                   
                      },
                      child: Text("Subir image",
                          style: TextStyle(
                              fontSize: 26.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFFD600),
                        minimumSize: Size(80.0, 80.0),
                      ),
                    ),
        ],
      ) : Container(),
    );
  }
}
