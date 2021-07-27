import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFD600),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(width: 150.0),
                Column(
                  children: [
                    Text(
                      "Pago mendiante tarjeta de crédito o débito",
                      style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(height: 1.0, width: 900.0, color: Colors.black),
                    Container(
                      height: 100.0,
                      color: Colors.black,
                      child: Divider(
                        color: Colors.red,
                        height: 50.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 153.0, top: 50.0),
                      child: Container(
                        height: 400.0,
                        width: 1000.0,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 223.0,
                              top: 59.0,
                              child: Card2(),
                            ),
                            Card1(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Resumen del pedido",
                      style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(height: 1.0, width: 350.0, color: Colors.black),
                    SizedBox(height: 80.0),
                    Container(
                      height: 300.0,
                      width: 200.0,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque lobortis dolor sed sollicitudin facilisis. Sed ipsum mauris, placerat luctus consequat in, vehicula sed mauris. Etiam a urna finibus, sodales neque id, egestas neque. Curabitur posuere molestie urna sed semper.",
                      ),
                    ),
                    Container(height: 1.0, width: 350.0, color: Colors.black),
                    Row(
                      children: [
                        Text("Subtotal", style: TextStyle(fontSize: 20.0)),
                        SizedBox(width: 100.0),
                        Text("300", style: TextStyle(fontSize: 20.0)),
                      ],
                    ),
                    SizedBox(height: 50.0),
                    Container(height: 1.0, width: 350.0, color: Colors.black),
                    SizedBox(height: 50.0),
                    Row(
                      children: [
                        Text("Total", style: TextStyle(fontSize: 36.0)),
                        SizedBox(width: 100.0),
                        Text("300", style: TextStyle(fontSize: 36.0)),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 123.0,
                        width: 730.0,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus placerat ipsum arcu, quis porttitor elit venenatis quis. Vivamus luctus massa ante, et malesuada tortor lacinia in. Donec euismod dapibus varius.",
                          style: TextStyle(fontSize: 24.0),
                        )),
                  ],
                ),
                SizedBox(height: 20.0),
                Container(
                  width: 730.0,
                  child: Text(
                    "Nullam sed nulla dui. Morbi pulvinar lacus in arcu gravida porta. Duis consectetur volutpat semper. Maecenas eleifend faucibus maximus. Vivamus a arcu vitae felis lobortis ornare finibus eget dolor. Nulla hendrerit in justo eu efficitur. Quisque vestibulum, massa vel malesuada pulvinar, lorem ligula malesuada sem, quis facilisis augue tellus a nulla. Cras viverra ut quam vitae semper. Phasellus vestibulum nisl vel ultrices pellentesque. ",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                SizedBox(height: 20.0),
              ],
            ),
            Container(height: 1.0, width: 1100.0, color: Colors.black),
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_back),
                TextButton(
                    onPressed: () {
                      print("ATRAS");
                    },
                    child: Text("Atrás",
                        style: TextStyle(fontSize: 36.0, color: Colors.black))),
                SizedBox(width: 400.0),
                Text("Total", style: TextStyle(fontSize: 36.0)),
                SizedBox(width: 100.0),
                Text("300", style: TextStyle(fontSize: 36.0)),
                 SizedBox(width: 20.0),
                ElevatedButton(
                    onPressed: () {
                      print("Siguiente");
                    },
                    child: Text(
                      "Siguiente",
                      style: TextStyle(fontSize: 36.0, color: Colors.black),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFFC4C4C4)),
                          padding: MaterialStateProperty.all(EdgeInsets.all(30.0)),
                    ))
              ],
            ),
            SizedBox(height: 100.0),
          ],
        ),
      ),
    );
  }
}

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: 500.0,
      padding: const EdgeInsets.only(left: 43.0, right: 43.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide.none,
              ),
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              filled: true,
              fillColor: Colors.grey,
              focusColor: Colors.grey,
              hintText: "Número de la tarjeta",
              hintStyle: TextStyle(color: Colors.black),
              contentPadding: EdgeInsets.only(left: 15),
            ),
          ),
          SizedBox(height: 25.0),
          Text("Fecha de caducidad", style: TextStyle(fontSize: 24.0)),
          SizedBox(height: 25.0),
          Row(
            children: [
              Container(
                width: 100.0,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none,
                    ),
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey,
                    focusColor: Colors.grey,
                    hintText: "MM",
                    hintStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.only(left: 15),
                  ),
                ),
              ),
              SizedBox(width: 39.0),
              Container(
                width: 100.0,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none,
                    ),
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey,
                    focusColor: Colors.grey,
                    hintText: "AA",
                    hintStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.only(left: 15),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
          color: Color(0xFFC4C4C4),
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              spreadRadius: 0.0,
              offset: Offset(0.0, 4.0),
            )
          ]),
    );
  }
}

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: 500.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
              height: 57.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey),
          SizedBox(height: 25.0),
          Container(
            padding: const EdgeInsets.only(right: 68.0),
            child: Column(
              children: [
                Text("CVV2/CVC2", style: TextStyle(fontSize: 24.0)),
                Container(
                  width: 100.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Icon(Icons.lock, color: Colors.black),
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey,
                      focusColor: Colors.grey,
                      hintStyle: TextStyle(color: Colors.black),
                      contentPadding: EdgeInsets.only(left: 15),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
          color: Color(0xFFC4C4C4),
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              spreadRadius: 0.0,
              offset: Offset(0.0, 4.0),
            )
          ]),
    );
  }
}
