import 'package:flutter/material.dart';

class TDButton extends StatelessWidget {
  final String text;
  final String image;
  final Function callback;
  final double width;

  TDButton({
    @required this.text,
    @required this.callback,
    this.image,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width != 0 ? width : 250,
      color: Theme.of(context).primaryColor,
      child: FlaButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            image != null
                ? Image.asset(
                    image,
                    width: 32,
                  )
                : const SizedBox(),
            image != null
                ? const SizedBox(
                    width: 10,
                  )
                : const SizedBox(),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
