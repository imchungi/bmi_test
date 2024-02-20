import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'input_page.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {

  ResultPage({required this.bmiResult, required this.resultText, required this.interPretation});

  final String bmiResult;
  final String resultText;
  final String interPretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child:
                  Container(
                      padding: EdgeInsets.all(15.0),
                      alignment: Alignment.bottomLeft,
                      child: Text('BMI Result', style: kTitleTextStyle))),
          Expanded(
              flex: 5,
              child: ReusableCard(
                ccolor: kActiveCardColor,
                onPress: () {},
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(resultText,style: kResultTextStyle),
                    Text(bmiResult,style: kBMITextStyle),
                    Text(interPretation
                    ,style: kBodyTextStye, textAlign: TextAlign.center,),
                  ],
                ),
              )),
          Expanded(
            child: BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'R e - C A L C U L A T E',
            ),
          ),
        ],
      ),
    );
  }
}
