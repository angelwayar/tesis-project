import 'package:flutter/material.dart';

class NavBarPlatform extends StatelessWidget {
  const NavBarPlatform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 80.0,
            width: 80.0,
            child: IconButton(
                onPressed: () {
                  print("Perfil");
                },
                icon: Icon(Icons.person, color: Colors.black)),
            decoration: BoxDecoration(
              color: Color(0xFFC4C4C4),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          SizedBox(width: 50.0),
        ],
      ),
    );
  }
}
