import 'package:flutter/material.dart';

import './add_place.screen.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Places'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => onPlacesAdd(context),
          )
        ],
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  void onPlacesAdd(BuildContext context) {
    Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
  }
}
