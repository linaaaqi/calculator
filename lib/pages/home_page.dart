import 'package:calculator/components/calculator_content.dart';
import 'package:calculator/components/calculator_header.dart';
import 'package:calculator/components/calculator_setting.dart';
import 'package:calculator/types/actions.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double count = 0;
  String action;
  int clickTime = 0;

  void handleNumberButtonClick(int number) {
    if (clickTime == 0) {
      count = number.toDouble();
    } else {
      count = count * 10 + number;
    }

    ++clickTime;

    setState(() {});
  }

  void handleActionButtonClick(String action) {
    switch (action) {
      case CalculatorActionsAdd:
        print(action);
        break;

      case CalculatorActionsSubtract:
        print(action);
        break;

      case CalculatorActionsMultiply:
        print(action);
        break;

      case CalculatorActionsDivide:
        print(action);
        break;

      default:
        print('default action');
    }
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return CupertinoPageScaffold(
      backgroundColor: Color(0xFFF0F0F3),
      child: SafeArea(
          child: Container(
        color: Color(0xFFF0F0F3),
        child: Column(
          children: [
            CalculatorHeader(
              count: count,
            ),
            CalculatorSetting(),
            CalculatorContent(
              handleNumberButtonClick: handleNumberButtonClick,
              handleActionButtonClick: handleActionButtonClick,
            )
          ],
        ),
      )),
    );
  }
}
