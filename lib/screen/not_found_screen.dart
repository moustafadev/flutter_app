import 'package:flutter/material.dart';
import 'package:flutter_app/shared/components/component.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body: buildLoadingSearch(context),
    );
  }
}
