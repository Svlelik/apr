import 'package:apr/src/core/_core.dart';
import 'package:flutter/material.dart';

abstract class NotifyService {
  static Future<void> _showSnackBar({
    required Widget content,
  }) async {
    AppGlobalKeys.scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        content: content,
        margin: EdgeInsets.zero,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        elevation: 0,
        showCloseIcon: false,
      ),
    );
  }

  static Future<void> success({
    String? title,
    String? text,
  }) async {
    await _showSnackBar(
      content: UiSuccessNotify(
        title: title != null ? Text(title) : null,
        description: text != null ? Text(text) : null,
        onPressed: AppGlobalKeys
            .scaffoldMessengerKey.currentState?.hideCurrentSnackBar,
      ),
    );
  }

  static Future<void> error({
    String? title,
    String? text,
  }) async {
    await _showSnackBar(
      content: UiErrorNotify(
        title: title != null ? Text(title) : null,
        description: text != null ? Text(text) : null,
        onPressed: AppGlobalKeys
            .scaffoldMessengerKey.currentState?.hideCurrentSnackBar,
      ),
    );
  }

  static Future<void> info({
    String? title,
    String? text,
  }) async {
    await _showSnackBar(
      content: UiInfoNotify(
        title: title != null ? Text(title) : null,
        description: text != null ? Text(text) : null,
        onPressed: AppGlobalKeys
            .scaffoldMessengerKey.currentState?.hideCurrentSnackBar,
      ),
    );
  }

  static Future<void> warning({
    String? title,
    String? text,
  }) async {
    await _showSnackBar(
      content: UiWarningNotify(
        title: title != null ? Text(title) : null,
        description: text != null ? Text(text) : null,
        onPressed: AppGlobalKeys
            .scaffoldMessengerKey.currentState?.hideCurrentSnackBar,
      ),
    );
  }
}
