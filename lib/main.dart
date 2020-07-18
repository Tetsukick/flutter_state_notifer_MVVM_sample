import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:fluttertestcountapp/Models/counter_model.dart';
import 'package:fluttertestcountapp/ViewModels/counter_state_notifier.dart';
import 'package:fluttertestcountapp/Views/counter_page.dart';
import 'package:provider/provider.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<CounterStateNotifier, CounterState>(
          create: (_) => CounterStateNotifier(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: <String, WidgetBuilder> {
          '/': (BuildContext context) => CounterPage(),
        },
      ),
    );
  }
}
