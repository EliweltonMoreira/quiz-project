import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(this.text, this.onSelected, {Key? key}) : super(key: key);

  final String text;
  final void Function() onSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        // style: ElevatedButton.styleFrom(
        //   primary: Colors.blue,
        //   onPrimary: Colors.white,
        // ),
        child: Text(text),
        onPressed: onSelected,
      ),
    );
  }
}
