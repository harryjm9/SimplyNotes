import 'package:flutter/material.dart';
import 'package:simply_notes/utilities/dialogs/generic_dialog.dart';

Future<void> showPasswordResetSentDialog(BuildContext context) {
  return showGenericDialog(
    context: context,
    title: 'Password Reset',
    content:
        'We have now sent a password reset email. Use the link in the email to change your password',
    optionsBuilder: () => {
      'OK': null,
    },
  );
}
