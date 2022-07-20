import 'package:todo/user.dart';
import '../views/login.view.dart';
import 'package:flutter/material.dart';
import '../controllers/login.controller.dart';
import 'package:todo/components/avatar.widget.dart';

class UserCard extends StatelessWidget {
  final controller = new LoginController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 40,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
          image: ExactAssetImage("assets/images/notification.png"),
        ),
      ),
      width: double.infinity,
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          TDAvatar(
            width: 80,
            path: user.picture,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            user.name,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          Container(
            height: 20,
            child: FlatButton(
              child: const Text(
                "Sair",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                controller.logout().then((data) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginView(),
                    ),
                  );
                });
              },
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
