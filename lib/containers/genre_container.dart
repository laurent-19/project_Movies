import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:meta/meta.dart';
import 'package:project_Movies/models/app_state.dart';
import 'package:redux/redux.dart';

class GenreContainer extends StatelessWidget {
  const GenreContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<String> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, String>(
      converter: (Store<AppState> store) {
        return store.state.genre;
      },
      builder: builder,
    );
  }
}
