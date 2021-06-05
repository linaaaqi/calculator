import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalculatorSetting extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CalculatorSettingState();
}

class _CalculatorSettingState extends State<CalculatorSetting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Modular.to.navigate('/webview'),
            child: Container(
              width: 39.w,
              height: 39.w,
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 26.w, top: 36.w),
              padding: EdgeInsets.fromLTRB(8.w, 8.h, 8.w, 8.h),
              decoration: BoxDecoration(
                  color: Color(0xFFF0F0F3),
                  borderRadius: BorderRadius.all(Radius.circular(20.w)),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(174, 174, 192, 0.4),
                        offset: Offset(-3.15.w, -3.15.w),
                        blurRadius: 9.44.w),
                    BoxShadow(
                        color: CupertinoColors.white,
                        offset: Offset(3.15.w, 3.15.w),
                        blurRadius: 9.44.w)
                  ]),
              child: Image(image: AssetImage('assets/images/refresh.png'),),
            ),
          ),
          Container(
            width: 39.w,
            height: 39.w,
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 21.w, top: 36.w),
            padding: EdgeInsets.fromLTRB(8.w, 8.h, 8.w, 8.h),
            decoration: BoxDecoration(
                color: Color(0xFFF0F0F3),
                borderRadius: BorderRadius.all(Radius.circular(20.w)),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(174, 174, 192, 0.4),
                      offset: Offset(-3.15.w, -3.15.w),
                      blurRadius: 9.44.w),
                  BoxShadow(
                      color: CupertinoColors.white,
                      offset: Offset(3.15.w, 3.15.w),
                      blurRadius: 9.44.w)
                ]),
            child: Image(image: AssetImage('assets/images/calculator.png'),),
          ),
          Container(
            width: 39.w,
            height: 39.w,
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 21.w, top: 36.w),
            padding: EdgeInsets.fromLTRB(8.w, 8.h, 8.w, 8.h),
            decoration: BoxDecoration(
                color: Color(0xFFF0F0F3),
                borderRadius: BorderRadius.all(Radius.circular(20.w)),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(174, 174, 192, 0.4),
                      offset: Offset(-3.15.w, -3.15.w),
                      blurRadius: 9.44.w),
                  BoxShadow(
                      color: CupertinoColors.white,
                      offset: Offset(3.15.w, 3.15.w),
                      blurRadius: 9.44.w)
                ]),
            child: Image(image: AssetImage('assets/images/setting.png'),),
          ),
          Container(
            width: 39.w,
            height: 39.w,
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 126.w, top: 36.w),
            padding: EdgeInsets.fromLTRB(8.w, 8.h, 8.w, 8.h),
            decoration: BoxDecoration(
                color: Color(0xFFF0F0F3),
                borderRadius: BorderRadius.all(Radius.circular(20.w)),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(174, 174, 192, 0.4),
                      offset: Offset(-3.15.w, -3.15.w),
                      blurRadius: 9.44.w),
                  BoxShadow(
                      color: CupertinoColors.white,
                      offset: Offset(3.15.w, 3.15.w),
                      blurRadius: 9.44.w)
                ]),
            child: Image(image: AssetImage('assets/images/cancel.png'),),
          ),
        ],
      ),
    );
  }
}
