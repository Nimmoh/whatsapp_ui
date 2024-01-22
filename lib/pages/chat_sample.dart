import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(right: 80),
        child: ClipPath(
          clipper: UpperNipMessageClipperTwo(MessageType.receive),
          child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 10),
          decoration: BoxDecoration(color: Colors.white,
          ),
          child: Text("Hi developer,How is the going?",
          style: TextStyle(fontSize: 17),
          ),
          ),
        ),
        ),

         Container(
           alignment: Alignment.centerRight,
           margin: EdgeInsets.only(top: 20,left: 80, bottom: 15),
            child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
            padding: EdgeInsets.only(top: 20, bottom: 15, left: 80, ),
            decoration: BoxDecoration(color: Colors.greenAccent,
            ),
            child: Text("Hi Programmer,I am doing great...thanks for asking.",
            style: TextStyle(fontSize: 17),
            ),
            ),
                   ),
                   ),
      ],

    );
  }
}
