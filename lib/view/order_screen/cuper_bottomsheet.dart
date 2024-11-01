import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CuperBottomSheet extends StatelessWidget {
  const CuperBottomSheet(
      {super.key,
      required this.title,
      required this.none,
      required this.cow,
      required this.lactose,
      required this.skimmed,
      required this.veg});
  final String title;
  final String none;
  final String cow;
  final String lactose;
  final String skimmed;
  final String veg;

  @override
  Widget build(BuildContext context) {
    return milkPreferenceSheet(context);
  }

  milkPreferenceSheet(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return CupertinoActionSheet(
          title: Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          actions: [
            CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.pop(context, 'None');
                },
                child: Text(
                  none,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )),
            CupertinoActionSheetAction(
              onPressed: () {},
              child: Text(cow),
            ),
            CupertinoActionSheetAction(
              onPressed: () {},
              child: Text(lactose),
            ),
            CupertinoActionSheetAction(
              onPressed: () {},
              child: Text(skimmed),
            ),
            CupertinoActionSheetAction(
              onPressed: () {},
              child: Text(veg),
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Cancel"),
            isDefaultAction: true,
          ),
        );
      },
    );
  }
}
