import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class CardTile extends StatelessWidget {
  final String title;
  final String value;
  final Image thumb;
  final Function onTap;

  CardTile({
    Key key,
    @required this.title,
    @required this.value,
    @required this.thumb,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ContainerResponsive(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            ContainerResponsive(
              width: 80,
              height: 80,
              margin: EdgeInsets.only(right: 10),
              child: thumb,
            ),
            Expanded(
              child: ContainerResponsive(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextResponsive(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .headline1
                          .merge(TextStyle(color: Colors.black54)),
                    ),
                    ContainerResponsive(height: 5),
                    TextResponsive(
                      value,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .merge(TextStyle(color: Colors.black38)),
                    ),
                  ],
                ),
              ),
            ),
            ContainerResponsive(
              child: Center(
                child: IconButton(
                  icon: Icon(Icons.arrow_drop_down_circle),
                  onPressed: onTap,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
