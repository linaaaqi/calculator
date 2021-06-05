import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';

class CalculatorHeader extends StatefulWidget {
  CalculatorHeader({Key key, @required this.count}) : super(key: key);

  final double count;

  @override
  State<StatefulWidget> createState() => _CalculatorHeaderState();
}

class _CalculatorHeaderState extends State<CalculatorHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 330.w,
        height: 117.w,
        margin: EdgeInsets.fromLTRB(21.w, 21.w, 24.w, 0),
        decoration: BoxDecoration(
            color: Color(0xFFF0F0F3),
            borderRadius: BorderRadius.all(Radius.circular(12.w)),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(174, 174, 192, 0.4),
                  offset: Offset(10.w, 10.w),
                  blurRadius: 30.w),
              BoxShadow(
                  color: CupertinoColors.white,
                  offset: Offset(-10.w, -10.w),
                  blurRadius: 30.w)
            ]),
        child: Container(
          alignment: Alignment.bottomRight,
          padding: EdgeInsets.only(right: 17.w),
          child: Text(
            widget.count.toString(),
            maxLines: 1,
            textAlign: TextAlign.right,
            style: TextStyle(fontFamily: 'Calculator', fontSize: 60.sp, color: Color(0xFF475053)),
          )
        ));
  }
}
