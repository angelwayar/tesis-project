import 'package:flutter/material.dart';
import 'package:plataforma_tesis/Pages/Forms/LoginForm/LoginForm.dart';
import 'package:plataforma_tesis/Pages/Forms/RegisterForm/RegisterFrom.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool loginForm = false;
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    primary: Colors.black,
    minimumSize: Size(300, 100),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Body(),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    child: Text(
                      "Registrate",
                      style: TextStyle(fontSize: 24.0),
                    ),
                    onPressed: () {},
                    style: raisedButtonStyle,
                  ),
                  ElevatedButton(
                    child: Text(
                      "Inicio de Sesión",
                      style: TextStyle(fontSize: 24.0),
                    ),
                    onPressed: () {
                      setState(() {
                        loginForm = !loginForm;
                      });
                    },
                    style: raisedButtonStyle,
                  )
                ],
              ),
              color: Colors.black,
            ),
            loginForm
                ? Padding(
                    padding: const EdgeInsets.only(top: 130.0),
                    child: Center(child: LoginForm()),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset("assets/images/tren.jpeg", fit: BoxFit.cover,)),
        ProductsAndServices(),
        RegisterForm()
      ],
    );
  }
}

class ProductsAndServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height,
      width: _size.width,
      color: Color(0xFFFFD600),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Nuestros Servicios",
            style: TextStyle(fontSize: 48.0),
          ),
          SizedBox(height: 150.0),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/Logo-Video.png"),
                  Container(
                    width: 300.0,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque lobortis dolor sed sollicitudin facilisis. Sed ipsum mauris, placerat luctus consequat in, vehicula sed mauris. Etiam a urna finibus, sodales neque id, egestas neque. Curabitur posuere molestie urna sed semper. In faucibus quis velit sit amet congue. Fusce sit amet tellus non leo commodo pretium id sit amet velit.",
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(width: 350.0),
                  Image.asset("assets/images/Logo-Resolucion.png"),
                  Container(
                    width: 300.0,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque lobortis dolor sed sollicitudin facilisis. Sed ipsum mauris, placerat luctus consequat in, vehicula sed mauris. Etiam a urna finibus, sodales neque id, egestas neque. Curabitur posuere molestie urna sed semper. In faucibus quis velit sit amet congue. Fusce sit amet tellus non leo commodo pretium id sit amet velit.",
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/Logo-Colorear.png"),
                  Container(
                    width: 300.0,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque lobortis dolor sed sollicitudin facilisis. Sed ipsum mauris, placerat luctus consequat in, vehicula sed mauris. Etiam a urna finibus, sodales neque id, egestas neque. Curabitur posuere molestie urna sed semper. In faucibus quis velit sit amet congue. Fusce sit amet tellus non leo commodo pretium id sit amet velit.",
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(width: 350.0),
                  Image.asset("assets/images/Logo-Adicionales.png"),
                  Container(
                    width: 300.0,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque lobortis dolor sed sollicitudin facilisis. Sed ipsum mauris, placerat luctus consequat in, vehicula sed mauris. Etiam a urna finibus, sodales neque id, egestas neque. Curabitur posuere molestie urna sed semper. In faucibus quis velit sit amet congue. Fusce sit amet tellus non leo commodo pretium id sit amet velit.",
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
