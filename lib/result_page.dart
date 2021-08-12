import 'package:bmi_calculator/resable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BottomButton.dart';
import 'constants.dart';

class Resultpage extends StatelessWidget {
  @override
  Resultpage(
      {@required this.bmiResult,
      @required this.bmiResultText,
      @required this.bmiResultAdvise});
  final String bmiResult;
  final String bmiResultText;
  final String bmiResultAdvise;

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          titleSpacing: 70,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ResableCard(
                colur: kActiveCardColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      bmiResultText,
                      style: kResulteTitle,
                    ),
                    Text(
                      bmiResult,
                      style: kBmiResult,
                    ),
                    Text(
                      bmiResultAdvise,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              titleName: 'Re-Calculate',
            )
          ],
        ),
      ),
    );
  }
}
