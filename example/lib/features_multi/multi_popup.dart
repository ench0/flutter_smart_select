import 'package:flutter/material.dart';
import 'package:smart_select/smart_select.dart';
import '../options.dart' as options;
import 'package:responsive_widgets/responsive_widgets.dart';

class FeaturesMultiPopup extends StatefulWidget {
  @override
  _FeaturesMultiPopupState createState() => _FeaturesMultiPopupState();
}

class _FeaturesMultiPopupState extends State<FeaturesMultiPopup> {
  List<String> _fruit = ['mel'];
  List<String> _framework = ['flu'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ContainerResponsive(height: 7),
        SmartSelect<String>.multiple(
          title: 'Fruit',
          value: _fruit,
          isTwoLine: true,
          options: options.fruits,
          modalType: SmartSelectModalType.popupDialog,
          leading: ContainerResponsive(
            width: 40,
            alignment: Alignment.center,
            child: const Icon(Icons.shopping_cart),
          ),
          onChange: (val) => setState(() => _fruit = val),
        ),
        Divider(indent: 20),
        SmartSelect<String>.multiple(
          title: 'Frameworks',
          value: _framework,
          options: options.frameworks,
          modalType: SmartSelectModalType.popupDialog,
          builder: (context, state, showOptions) {
            return ListTile(
              title: TextResponsive(state.title),
              subtitle: TextResponsive(
                state.valueDisplay,
                style: TextStyle(color: Colors.grey),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: TextResponsive(_framework.length.toString(),
                    style: TextStyle(color: Colors.white)),
              ),
              trailing: Icon(Icons.keyboard_arrow_right, color: Colors.grey),
              onTap: () => showOptions(context),
            );
          },
          onChange: (val) => setState(() => _framework = val),
        ),
        ContainerResponsive(height: 7),
      ],
    );
  }
}
