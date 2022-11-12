import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../constants/app_color.dart';

///contains success snackbar and failure snackbar

class SnackbarService {
  final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSuccessSnackbar(
      String text) {
    return scaffoldMessengerKey.currentState!.showSnackBar(SnackBar(
      content: Text(text),
      backgroundColor: AppColor.searchColor,
    ));
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showErrorSnackbar(
      String text) {
    return scaffoldMessengerKey.currentState!.showSnackBar(
      SnackBar(
        content: Text(text),
        backgroundColor: AppColor.red,
      ),
    );
  }
}

final snackbarServiceProvider = Provider((ref) => SnackbarService());
