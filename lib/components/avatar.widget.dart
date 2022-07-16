import 'package:flutter/material.dart';

class TDAvatar extends StatelessWidget {
  final String path;
  final double width;

  TDAvatar({@required  this.path, @required  this.width})

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
       height: width,
       padding: const EdgeInsets.all(20),
       decoration: BoxDecoration(
          borderRadius: BorderRadius.all(width),
          image: DecorationImage(
            image: NetworkImage(path),
          ),
       ),
       color: Colors.black.withOpacity(0.2),
    );
  }
}
