import 'package:flutter/material.dart';
import 'package:great_places_app/screens/place_details.screen.dart';
import 'package:provider/provider.dart';

import './providers/great_places.provider.dart';

import './screens/places_list.screen.dart';
import './screens/add_place.screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
          PlaceDetailsScreen.routeName: (ctx) => PlaceDetailsScreen()
        },
      ),
    );
  }
}
