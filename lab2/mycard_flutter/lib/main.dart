import 'package:flutter/material.dart';

void main() {
  runApp(const MyCard());
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/goku.jpg'),
            ),
            Text(
              'Tang Ngoc Nhan',
              style: TextStyle(
                  fontSize: 30, color: Colors.white, fontFamily: 'Pacifico'),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Poppins',
                  color: Colors.teal[900]),
            ),
            SizedBox(
                width: 250.0,
                child: Divider(
                  color: Colors.white,
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      'nhanno1st@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      '0949922971',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ))
          ],
        )),
      ),
    );
  }
}
