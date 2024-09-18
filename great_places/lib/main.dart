import 'package:flutter/material.dart';
import 'package:great_places/providers/grate_places.dart';
import 'package:great_places/screens/place_form_screen.dart';
import 'package:great_places/screens/places_list_screen.dart';
import 'package:great_places/utils/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GratePlaces(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.indigo,
            secondary: Colors.amber,
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const PlacesListScreen(),
        routes: {
          AppRoutes.placeForm: (ctx) => const PlaceFormScreen(),
        },
      ),
    );
  }
}
