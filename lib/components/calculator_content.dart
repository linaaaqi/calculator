import 'package:calculator/types/actions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';

class CalculatorContent extends StatelessWidget {
  CalculatorContent(
      {Key key,
      @required this.handleNumberButtonClick,
      @required this.handleActionButtonClick})
      : super(key: key);

  final Function handleNumberButtonClick;
  final Function handleActionButtonClick;

  Widget _buildNumberButton(int number, {bool isFirst = false}) {
    double leftMargin = isFirst ? 21.w : 14.3.w;

    return GestureDetector(
      onTap: () => handleNumberButtonClick(number),
      child: Container(
        width: 72.7.w,
        height: 79.56.w,
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: leftMargin, top: 20.4.w),
        decoration: BoxDecoration(
          color: Color(0xFFDAD6D6),
          borderRadius: BorderRadius.all(Radius.circular(17.15.w)),
        ),
        child: Container(
          width: 51.94.w,
          height: 59.43.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color(0xFFDAD6D6),
              borderRadius: BorderRadius.all(Radius.circular(5.68.w)),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(174, 174, 192, 0.4),
                    offset: Offset(4.73.w, 4.73.w),
                    blurRadius: 14.19.w),
                BoxShadow(
                    color: Color(0xFFEEE5E5),
                    offset: Offset(-4.73.w, -4.73.w),
                    blurRadius: 14.19.w)
              ]),
          child: Text(
            number.toString(),
            style: TextStyle(
                fontFamily: 'Iceland',
                fontSize: 60.sp,
                color: Color(0xFFFFFFFF)),
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(String action, {bool isFirst = false}) {
    double topMargin = isFirst ? 30.w : 20.4.w;

    return GestureDetector(
      onTap: () => handleActionButtonClick(action),
      child: Container(
        width: 72.7.w,
        height: 79.56.w,
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 14.3.w, top: topMargin),
        decoration: BoxDecoration(
          color: Color(0xFF8787A3),
          borderRadius: BorderRadius.all(Radius.circular(50.w)),
        ),
        child: Container(
          width: 51.94.w,
          height: 59.43.w,
          alignment: Alignment.center,
          transformAlignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color(0xFF8787A3),
              borderRadius: BorderRadius.all(Radius.circular(50.w)),
              boxShadow: [
                BoxShadow(
                    color: Color(0xFF72728C),
                    offset: Offset(4.73.w, 4.73.w),
                    blurRadius: 14.19.w),
                BoxShadow(
                    color: Color(0xFF9D9DBA),
                    offset: Offset(-4.73.w, -4.73.w),
                    blurRadius: 14.19.w)
              ]),
          child: Center(
            child: Text(
              action,
              style: TextStyle(
                  fontFamily: 'Iceland',
                  fontSize: 60.sp,
                  color: Color(0xFFFFFFFF)),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 72.7.w,
                height: 79.56.w,
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 21.w, top: 30.w),
                decoration: BoxDecoration(
                  color: Color(0xFF8787A3),
                  borderRadius: BorderRadius.all(Radius.circular(17.15.w)),
                ),
                child: Container(
                  width: 51.94.w,
                  height: 59.43.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xFF8787A3),
                      borderRadius: BorderRadius.all(Radius.circular(5.68.w)),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF72728C),
                            offset: Offset(4.73.w, 4.73.w),
                            blurRadius: 14.19.w),
                        BoxShadow(
                            color: Color(0xFF9D9DBA),
                            offset: Offset(-4.73.w, -4.73.w),
                            blurRadius: 14.19.w)
                      ]),
                  child: Text(
                    'C',
                    style: TextStyle(
                        fontSize: 60.sp,
                        fontFamily: 'Iceland',
                        color: Color(0xFFFFFFFF)),
                  ),
                ),
              ),
              Container(
                width: 72.7.w,
                height: 79.56.w,
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 14.3.w, top: 30.w),
                decoration: BoxDecoration(
                  color: Color(0xFF8787A3),
                  borderRadius: BorderRadius.all(Radius.circular(17.15.w)),
                ),
                child: Container(
                  width: 51.94.w,
                  height: 59.43.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xFF8787A3),
                      borderRadius: BorderRadius.all(Radius.circular(5.68.w)),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF72728C),
                            offset: Offset(4.73.w, 4.73.w),
                            blurRadius: 14.19.w),
                        BoxShadow(
                            color: Color(0xFF9D9DBA),
                            offset: Offset(-4.73.w, -4.73.w),
                            blurRadius: 14.19.w)
                      ]),
                  child: Text(
                    'C',
                    style: TextStyle(
                        fontSize: 60.sp,
                        fontFamily: 'Iceland',
                        color: Color(0xFFFFFFFF)),
                  ),
                ),
              ),
              Container(
                width: 72.7.w,
                height: 79.56.w,
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 14.3.w, top: 30.w),
                decoration: BoxDecoration(
                  color: Color(0xFF8787A3),
                  borderRadius: BorderRadius.all(Radius.circular(17.15.w)),
                ),
                child: Container(
                  width: 51.94.w,
                  height: 59.43.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xFF8787A3),
                      borderRadius: BorderRadius.all(Radius.circular(5.68.w)),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF72728C),
                            offset: Offset(4.73.w, 4.73.w),
                            blurRadius: 14.19.w),
                        BoxShadow(
                            color: Color(0xFF9D9DBA),
                            offset: Offset(-4.73.w, -4.73.w),
                            blurRadius: 14.19.w)
                      ]),
                  child: Text(
                    '%',
                    style: TextStyle(
                        fontSize: 60.sp,
                        fontFamily: 'Iceland',
                        color: Color(0xFFFFFFFF)),
                  ),
                ),
              ),
              _buildActionButton(CalculatorActionsDivide, isFirst: true)
            ],
          ),
          Row(
            children: [
              _buildNumberButton(7, isFirst: true),
              _buildNumberButton(8),
              _buildNumberButton(9),
              _buildActionButton(CalculatorActionsMultiply)
            ],
          ),
          Row(
            children: [
              _buildNumberButton(4, isFirst: true),
              _buildNumberButton(5),
              _buildNumberButton(6),
              _buildActionButton(CalculatorActionsSubtract)
            ],
          ),
          Row(
            children: [
              _buildNumberButton(1, isFirst: true),
              _buildNumberButton(2),
              _buildNumberButton(3),
              _buildActionButton(CalculatorActionsAdd)
            ],
          ),
          Row(
            children: [
              Container(
                  width: 159.w,
                  height: 79.56.w,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 21.w, top: 20.4.w),
                  decoration: BoxDecoration(
                    color: Color(0xFFDAD6D6),
                    borderRadius: BorderRadius.all(Radius.circular(17.15.w)),
                  ),
                  child: Container(
                    width: 113.6.w,
                    height: 59.43.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xFFDAD6D6),
                        borderRadius: BorderRadius.all(Radius.circular(5.68.w)),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(174, 174, 192, 0.4),
                              offset: Offset(4.73.w, 4.73.w),
                              blurRadius: 14.19.w),
                          BoxShadow(
                              color: Color(0xFFEEE5E5),
                              offset: Offset(-4.73.w, -4.73.w),
                              blurRadius: 14.19.w)
                        ]),
                    child: Text(
                      '0',
                      style: TextStyle(
                          fontFamily: 'Iceland',
                          color: Color(0xFFFFFFFF),
                          fontSize: 60.sp),
                    ),
                  )),
              Container(
                width: 72.7.w,
                height: 79.56.w,
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 14.3.w, top: 20.4.w),
                decoration: BoxDecoration(
                  color: Color(0xFFDAD6D6),
                  borderRadius: BorderRadius.all(Radius.circular(17.15.w)),
                ),
                child: Container(
                  width: 51.94.w,
                  height: 59.43.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xFFDAD6D6),
                      borderRadius: BorderRadius.all(Radius.circular(5.68.w)),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(174, 174, 192, 0.4),
                            offset: Offset(4.73.w, 4.73.w),
                            blurRadius: 14.19.w),
                        BoxShadow(
                            color: Color(0xFFEEE5E5),
                            offset: Offset(-4.73.w, -4.73.w),
                            blurRadius: 14.19.w)
                      ]),
                  child: Text(
                    '.',
                    style: TextStyle(
                        fontFamily: 'Iceland',
                        color: Color(0xFFFFFFFF),
                        fontSize: 60.sp),
                  ),
                ),
              ),
              Container(
                width: 72.7.w,
                height: 79.56.w,
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 14.3.w, top: 20.4.w),
                decoration: BoxDecoration(
                  color: Color(0xFFE3670C),
                  borderRadius: BorderRadius.all(Radius.circular(50.w)),
                ),
                child: Container(
                  width: 51.94.w,
                  height: 59.43.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xFFE3670C),
                      borderRadius: BorderRadius.all(Radius.circular(50.w)),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFFCD5700),
                            offset: Offset(4.73.w, 4.73.w),
                            blurRadius: 14.19.w),
                        BoxShadow(
                            color: Color(0xFFE3670C),
                            offset: Offset(-4.73.w, -4.73.w),
                            blurRadius: 14.19.w)
                      ]),
                  child: Text(
                    '=',
                    style: TextStyle(
                        fontSize: 60.sp,
                        color: Color(0xFFFFFFFF),
                        fontFamily: 'Iceland'),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
