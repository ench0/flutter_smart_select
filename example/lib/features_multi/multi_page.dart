import 'package:flutter/material.dart';
import 'package:smart_select/smart_select.dart';
import '../options.dart' as options;
import 'package:responsive_widgets/responsive_widgets.dart';

class FeaturesMultiPage extends StatefulWidget {
  @override
  _FeaturesMultiPageState createState() => _FeaturesMultiPageState();
}

class _FeaturesMultiPageState extends State<FeaturesMultiPage> {
  List<String> _day = ['fri'];
  List<String> _month = ['apr'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ContainerResponsive(height: 7),
        SmartSelect<String>.multiple(
            title: 'Days',
            value: _day,
            options: options.days,
            onChange: (val) => setState(() => _day = val)),
        Divider(indent: 20),
        SmartSelect<String>.multiple(
            title: 'Month',
            value: _month,
            options: options.months,
            modalType: SmartSelectModalType.fullPage,
            onChange: (val) => setState(() => _month = val)),
        ContainerResponsive(height: 7),
      ],
    );
  }
}
