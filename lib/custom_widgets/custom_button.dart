import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacific_hunt/core/constant/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.label,
      this.radius,
      this.width,
      this.height,
      this.fontSize,
      this.color,
        this.isDisable=false,
      this.leadingIcon,
      this.trailingIcon});
  final VoidCallback? onPressed;
  final String label;
  final double? radius;
  final double? width;
  final double? height;
  final double? fontSize;
  final Color? color;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final bool? isDisable;

  @override
  Widget build(BuildContext context) {
    var elevatedButtonStyleFrom = ElevatedButton.styleFrom(
      backgroundColor: color ?? AppColors.buttonColor,
      splashFactory: isDisable!?NoSplash.splashFactory:null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius ?? 10.0),

      ),
    );
    var widget = Text(
      label,
      style: TextStyle(
        color: isDisable!?AppColors.defaultTextFieldLabelColor:Colors.white,
        fontSize: fontSize ?? 16,
        fontWeight: FontWeight.w500,
      ),
    );
    return SizedBox(
      height: height ?? 48,
      width: width ?? double.infinity,
      child: _buttonCondition(elevatedButtonStyleFrom, widget),
    );
  }

  Widget _buttonCondition (elevatedButtonStyleFrom, widget){
    if(isDisable!){
      return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: AppColors.buttonColor,width: 2)
          ),
          child: _getWidget(elevatedButtonStyleFrom, widget));
    }else{
      return _getWidget(elevatedButtonStyleFrom, widget);

    }
  }

  ElevatedButton _getWidget(
    ButtonStyle elevatedButtonStyleFrom,
    Text widget,
  ) {
    if (leadingIcon != null) {
      return ElevatedButton.icon(
        style: elevatedButtonStyleFrom,
        onPressed: onPressed,
        label: widget,
        icon: leadingIcon!,
      );
    }
    if (trailingIcon != null) {
      return ElevatedButton(
        style: elevatedButtonStyleFrom,
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [widget, trailingIcon!],
        ),
      );
    }
    return ElevatedButton(
      style: elevatedButtonStyleFrom,
      onPressed: onPressed,
      child: widget,
    );
  }
}
