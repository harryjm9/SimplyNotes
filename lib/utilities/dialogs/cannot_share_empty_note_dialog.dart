import 'package:flutter/cupertino.dart';
import 'package:simply_notes/utilities/dialogs/generic_dialog.dart';

Future<void> showCannotShareEmptyNoteDialog(BuildContext context) {
  return showGenericDialog<void>(
    context: context,
    title: 'Sharing',
    content: 'You cannot share an empty note!',
    optionsBuilder: (() => {
          'OK': null,
        }),
  );
}
