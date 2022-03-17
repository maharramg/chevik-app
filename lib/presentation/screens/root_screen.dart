import 'package:flutter/material.dart';
import 'package:start_up/utilities/constants/locale_keys.dart';

import '../../utilities/constants/constants.dart';
import '../../utilities/router/router.dart';
import '../widgets/widgets.dart';

class RootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.rootTitle),
        actions: [
          Padding(
            padding: AppConstants.padding8,
            child: ActionButton(
              onTap: () => Navigator.of(context).pushNamed(RoutePaths.SETTINGS),
              child: Icon(AppIcons.settings),
            ),
          ),
        ],
      ),
      body: Center(
        child: Text('context.l10n.body'),
      ),
    );
  }
}
