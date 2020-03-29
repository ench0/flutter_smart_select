import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class IconBadge extends StatelessWidget {
  final Icon icon;
  final int counter;
  final Color color;

  IconBadge({
    Key key,
    @required this.icon,
    this.counter = 0,
    this.color = Colors.red,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerResponsive(
      width: 30.0,
      height: 30.0,
      child: Stack(
        children: <Widget>[
          icon,
          Positioned(
            top: 0,
            right: 0,
            child: ContainerResponsive(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
              constraints: BoxConstraints(
                minWidth: 14,
                minHeight: 14,
              ),
              child: TextResponsive(
                counter.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 9,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
