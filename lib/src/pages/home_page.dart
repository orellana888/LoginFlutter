import 'package:app_login/src/widgets/icon_container.dart';
import 'package:app_login/src/widgets/login_form.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: <Color>[
              Color.fromARGB(255, 0, 15, 175),
              Color.fromARGB(0, 80, 117, 239),
            ], begin: Alignment.topCenter),
          ),
          child: ListView(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 200),
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconContainer(
                      url: 'images/goku.jpg',
                      key: null,
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Bienvenido',
                      style: TextStyle(
                        fontSize: 38.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Saiyajin Legendario',
                      style: TextStyle(fontSize: 25.0),
                    ),
                    Divider(
                      height: 10.0,
                    ),
                    LoginForm()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
