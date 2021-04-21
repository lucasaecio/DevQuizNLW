import 'package:devquiz/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:flutter/material.dart';

class ChallgengePage extends StatefulWidget {
  @override
  _ChallgengePageState createState() => _ChallgengePageState();
}

class _ChallgengePageState extends State<ChallgengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          top: true,
          child: QuestionIndicatorWidget(),
        ),
      ),
    );
  }
}
