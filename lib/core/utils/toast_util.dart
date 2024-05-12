import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future showSuccessToast(String message, {Color? color}) async {
  await Fluttertoast.cancel();
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      backgroundColor: color ?? Colors.green,
      textColor: Colors.white,
      fontSize: 16.0);
}

Future showErrorToast(String message, {Color? color}) async {
  await Fluttertoast.cancel();
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      backgroundColor: color ?? Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}
