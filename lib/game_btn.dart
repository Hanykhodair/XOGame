import 'package:flutter/material.dart';

class GameBtn extends StatelessWidget {
  String txt;
  GameBtn(this.txt);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(onPressed:() {

      }, child: Text(txt, style: TextStyle(fontSize: 55,
      fontWeight: FontWeight.w100),),),
    );
  }
}
