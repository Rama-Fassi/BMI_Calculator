import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:bmi_calculator/components/reuseable_card.dart';
import '../components/bottem_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {required this.bmi,
      required this.getInterpretation,
      required this.getResult});

  final String getResult;
  final String getInterpretation;
  final String bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(FontAwesomeIcons.solidHeart),
        title: Text('BMI'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    getResult,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmi,
                    style: kBMITextStyle,
                  ),
                  Text(
                    getInterpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              colour: kActiveCardcolor,
            ),
          ),
          Expanded(
            child: BottemWidget(
              text: 'RE-Calculate',
              ontap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
