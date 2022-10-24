import 'package:flutter/material.dart';
import '../const/colors.dart';

class OTPTextIpnut extends StatelessWidget {
  const OTPTextIpnut({
    required String hintText,
    Key? key,
  })  : _hintText = hintText,
        super(key: key);

  final String _hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: ShapeDecoration(
          color: AppColor.placeholderBg, shape: StadiumBorder()),
      child: TextField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        keyboardAppearance: Brightness.dark,
        keyboardType:
            TextInputType.numberWithOptions(signed: false, decimal: false),
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: _hintText,
            hintStyle: TextStyle(
              color: AppColor.placeholder,
            ),
            contentPadding: const EdgeInsets.only(left: 30)),
      ),
    );
  }
}
