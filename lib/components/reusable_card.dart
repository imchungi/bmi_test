import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {required this.ccolor, required this.cardChild, required this.onPress});
  final Color ccolor;
  final Widget cardChild;
  // final VoidCallback onPress ; //1 함수로 값전달 Function 아닌 VoidCallBac으로 !
  final GestureTapCallback onPress;  //2 GestureTapCallback 사용

//ccolor: Color(0xFF1D1E33)
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: ccolor, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
