import 'package:flutter/material.dart';
import 'package:native_devices/screens/add_place_screen.dart';
import 'package:native_devices/screens/place_detail_screen.dart';
import 'package:native_devices/screens/places_list_screen.dart';
import 'package:provider/provider.dart';
import './providers/greate_places.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme:
            ThemeData(primarySwatch: Colors.indigo, accentColor: Colors.amber),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScreen.routedName: ((context) => AddPlaceScreen()),
          PlaceDetailScreen.routedName: ((context) => PlaceDetailScreen()),
        },
      ),
    );
  }
}
