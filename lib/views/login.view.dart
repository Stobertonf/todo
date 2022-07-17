import 'package:flutter/material.dart';
import '../controllers/login.controller.dart';
import 'package:todo/components/button.widget.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var busy = false;
  final controller = new LoginController();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  handleSignIn() {
    setState(() {
      busy = true;
    });
    controller.login().then((data) {
      onSuccess();
    }).catchError((err) {
      onError();
    }).whenComplete(() {
      onComplete();
    });
  }

  onSuccess() {}
  onError() {}
  onComplete() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Card(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  width: double.infinity,
                ),
                Image.asset(
                  "assets/images/notification.png",
                  width: 250,
                ),
                const Text(
                  "Olá desconhecido",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TDButton(
                    text: "Login com Google",
                    image: "assets/images/google.png",
                    callback: () {}),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
