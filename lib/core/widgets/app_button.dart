import 'package:blogclubui/core/core.dart';
import 'package:flutter/material.dart';
 
class AppButton extends StatefulWidget {
  final String title;
  final VoidCallback onPressed;
  final double? buttonWidth;
  final double? buttonHeigth;
  const AppButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.buttonWidth,
    this.buttonHeigth,
  }) : super(key: key);

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          AppColor.lightColorScheme.primary,
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(vertical: widget.buttonHeigth ?? 20.0),
        ),
        elevation: MaterialStateProperty.all(10.0),
      ),
      child: SizedBox(
        width: widget.buttonWidth ?? MediaQuery.of(context).size.width / 1.5,
        // height: widget.buttonHeigth ,
        child: Text(
          widget.title,
          textAlign: TextAlign.center,
          style: AppStyle.bodyText1.copyWith(
            color: AppColor.lightColorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}
