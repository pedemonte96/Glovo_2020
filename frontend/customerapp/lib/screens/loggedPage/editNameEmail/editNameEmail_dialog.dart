import 'package:customerapp/screens/loggedPage/editNameEmail/editNameEmail_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EditNameEmailDialog extends StatelessWidget {
  final Function update;
  EditNameEmailDialog(this.update);
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Wrap(children: [
        Container(
          constraints: BoxConstraints(maxWidth: 600),
          child: Column(children: [
            Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment(1, 1),
                child: IconButton(
                  color: Color(0xFF6E6E6E),
                  icon: Icon(Icons.clear),
                  iconSize: 40,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 70),
                child: EditNameEmail(update: update))
          ]),
        )
      ]),
    );
  }
}
