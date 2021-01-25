
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(DevicePreview(
  builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
    home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("MY Traveling"),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){},
            ),
            IconButton(
                icon: Icon(Icons.more_vert),
              onPressed: (){},
                ),
          ],
          flexibleSpace: Image.asset("assests/back.jpg" ,fit: BoxFit.cover
          ),
          bottom:  TabBar(
            tabs: [
              Tab(
                  icon: Icon(Icons.directions_car),

              ),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
          elevation: 22.0,

        ),
        body: TabBarView(
      children: [
      Icon(Icons.directions_car),
      Icon(Icons.directions_transit),
      Icon(Icons.directions_bike),
      ],
    ),
      ),
    );
  }
}
