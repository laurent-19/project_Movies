import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:meta/meta.dart';
import 'package:project_Movies/models/app_state.dart';
import 'package:redux/redux.dart';

class QualityContainer extends StatelessWidget {
  const QualityContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<String> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, String>(
      converter: (Store<AppState> store) {
        return store.state.quality;
      },
      builder: builder,
    );
  }
}
