import 'package:flutter/material.dart';
import 'package:todo/widgets/user-card.widget.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          FlatButton(
            child: const Text(
              "Hoje",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {},
          ),
          FlatButton(
            child: const Text(
              "Amanhã",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w100,
              ),
            ),
            onPressed: () {},
          ),
          FlatButton(
            child: const Text(
              "Todas",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w100,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
