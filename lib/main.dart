import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherlyapp/viewmodels/city_view_model.dart';
import 'package:weatherlyapp/viewmodels/forecast_view_model.dart';
import 'package:weatherlyapp/views/home_view.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<CityEntryViewModel>(
        create: (_) => CityEntryViewModel()),
    ChangeNotifierProvider<ForecastViewModel>(
        create: (_) => ForecastViewModel()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weatherly',
      home: HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
