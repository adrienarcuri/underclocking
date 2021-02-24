import 'package:flutter/material.dart';

class FluoButton extends StatelessWidget {
  final Function onTap;
  final Color color;
  final Color backgroundColor;
  final Widget child;
  final String image;

  const FluoButton({
    @required this.onTap,
    this.color = Colors.cyan,
    this.backgroundColor = Colors.white,
    this.child,
    this.image,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: child,
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          image: image != null
              ? DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                )
              : null,
          boxShadow: [
            BoxShadow(
              color: color,
              blurRadius: 3,
              spreadRadius: 1,
              offset: Offset.zero,
            )
          ],
          border: Border.all(width: 5, color: color),
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
