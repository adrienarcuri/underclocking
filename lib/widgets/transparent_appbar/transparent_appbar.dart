import 'package:flutter/material.dart';

class TransparentAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  TransparentAppBar({
    @required this.title,
    Key key,
  })  : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);
  @override
  final Size preferredSize;

  @override
  _TransparentAppBarState createState() => _TransparentAppBarState();
}

class _TransparentAppBarState extends State<TransparentAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(
        widget.title,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.black.withOpacity(0.9)),
      ),
    );
  }
}

class TextItem extends StatelessWidget {
  final String text;
  const TextItem(
    this.text, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          backgroundColor: Colors.white.withOpacity(0.8)),
    );
  }
}
