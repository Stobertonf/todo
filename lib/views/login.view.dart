import 'package:flutter/material.dart';
import 'package:todo/views/home.view.dart';
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

  onSuccess() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeView(),
      ),
    );
  }

  onError() {
    var snackbar = new SnackBar(content: new Text("Falha no login"));
    // ignore: deprecated_member_use
    scaffoldKey.currentState?.showSnackBar(snackbar);
  }

  onComplete() {
    setState(() {
      busy = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: busy == true
              ? const CircularProgressIndicator()
              : Card(
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
