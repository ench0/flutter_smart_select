import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class FeaturesHeader extends StatelessWidget {
  final String title;

  FeaturesHeader(
    this.title, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerResponsive(
      height: 45.0,
      color: Colors.blueGrey[50],
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      alignment: Alignment.centerLeft,
      child: TextResponsive(
        title,
        style: Theme.of(context)
            .textTheme
            .bodyText2
            .merge(TextStyle(color: Colors.black54)),
      ),
    );
  }
}
