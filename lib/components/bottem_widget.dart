import 'package:flutter/material.dart';
import '../constants.dart';

class BottemWidget extends StatelessWidget {
  BottemWidget({required this.text, required this.ontap});
  final String text;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        color: kBottemContainercolor,
        height: kBottemContainerHeigh,
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 25.0),
          ),
        ),
      ),
    );
  }
}
