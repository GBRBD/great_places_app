import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:great_places_app/providers/great_places.provider.dart';
import 'package:great_places_app/screens/map.screen.dart';
import 'package:provider/provider.dart';

class PlaceDetailsScreen extends StatelessWidget {
  static const routeName = '/place-detail';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments;
    final selectedPlace =
        Provider.of<GreatPlaces>(context, listen: false).findById(id);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedPlace.title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 250,
            width: double.infinity,
            child: Image.file(
              selectedPlace.image,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            selectedPlace.location.address,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          FlatButton(
            child: Text('View on Map'),
            textColor: Theme.of(context).primaryColor,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => MapScreen(
                      initialLocation: selectedPlace.location,
                      isSelecting: false),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
