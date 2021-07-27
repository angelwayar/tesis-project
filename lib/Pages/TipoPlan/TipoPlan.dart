import 'package:flutter/material.dart';
import 'package:plataforma_tesis/Pages/Forms/CreditCard/CreditCard.dart';

class PlanPage extends StatelessWidget {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    primary: Colors.black,
    minimumSize: Size(296.0, 57.0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFD600),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "¡Escoge el plan que más se ajuste a tus necesidades!",
            style: TextStyle(fontSize: 48.0),
          ),
          SizedBox(height: 106.0),
          Padding(
            padding: const EdgeInsets.only(left: 76.0, right: 76.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 500.0,
                  width: 400.0,
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/imagen_1.png",
                        height: 162.0,
                        width: 114.0,
                      ),
                      Text(
                        "Free",
                        style: TextStyle(fontSize: 24.0),
                      ),
                      SizedBox(height: 24.0),
                      ElevatedButton(
                        child: Text(
                          "Elegir Plan",
                          style: TextStyle(fontSize: 24.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreditCard()));
                        },
                        style: raisedButtonStyle,
                      ),
                      SizedBox(height: 46.0),
                      Text(
                        "CARACTERÍSTICAS",
                        style: TextStyle(fontSize: 24.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque lobortis dolor sed sollicitudin facilisis. Sed ipsum mauris, placerat luctus consequat in, vehicula sed mauris. Etiam a urna finibus, sodales neque id, egestas neque. Curabitur posuere molestie urna sed semper. In faucibus quis velit sit amet congue. Fusce sit amet tellus non leo commodo pretium id sit amet velit."),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                Container(
                  height: 500.0,
                  width: 400.0,
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/imagen_1.png",
                        height: 162.0,
                        width: 114.0,
                      ),
                      Text(
                        "Medium",
                        style: TextStyle(fontSize: 24.0),
                      ),
                      SizedBox(height: 24.0),
                      ElevatedButton(
                        child: Text(
                          "Elegir Plan",
                          style: TextStyle(fontSize: 24.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreditCard()));
                        },
                        style: raisedButtonStyle,
                      ),
                      SizedBox(height: 46.0),
                      Text(
                        "CARACTERÍSTICAS",
                        style: TextStyle(fontSize: 24.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque lobortis dolor sed sollicitudin facilisis. Sed ipsum mauris, placerat luctus consequat in, vehicula sed mauris. Etiam a urna finibus, sodales neque id, egestas neque. Curabitur posuere molestie urna sed semper. In faucibus quis velit sit amet congue. Fusce sit amet tellus non leo commodo pretium id sit amet velit."),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                Container(
                  height: 500.0,
                  width: 400.0,
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/imagen_2.png",
                        height: 162.0,
                        width: 114.0,
                      ),
                      Text(
                        "Gold",
                        style: TextStyle(fontSize: 24.0),
                      ),
                      SizedBox(height: 24.0),
                      ElevatedButton(
                        child: Text(
                          "Elegir Plan",
                          style: TextStyle(fontSize: 24.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreditCard()));
                        },
                        style: raisedButtonStyle,
                      ),
                      SizedBox(height: 46.0),
                      Text(
                        "CARACTERÍSTICAS",
                        style: TextStyle(fontSize: 24.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque lobortis dolor sed sollicitudin facilisis. Sed ipsum mauris, placerat luctus consequat in, vehicula sed mauris. Etiam a urna finibus, sodales neque id, egestas neque. Curabitur posuere molestie urna sed semper. In faucibus quis velit sit amet congue. Fusce sit amet tellus non leo commodo pretium id sit amet velit."),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
