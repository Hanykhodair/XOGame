import 'package:flutter/material.dart';

class GameBtn extends StatelessWidget {
  String txt;
  Function onGameClick;
  int index;

  GameBtn(this.txt, this.onGameClick, this.index);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.indigo,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
            side: BorderSide(
                color: Colors.white, width: 2)
          )
        ),
        onPressed:() {
        onGameClick(index);
      }, child: Text(txt, style: TextStyle(fontSize: 55,
      fontWeight: FontWeight.w100),),),
    );
  }
}
